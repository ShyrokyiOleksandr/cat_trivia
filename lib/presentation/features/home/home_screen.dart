import 'package:cat_trivia/presentation/common/extensions/build_context_extensions.dart';
import 'package:cat_trivia/presentation/common/resources/colors/app_colors.dart';
import 'package:cat_trivia/presentation/common/ui/app_bar/app_app_bar.dart';
import 'package:cat_trivia/presentation/common/ui/app_try_again_error.dart';
import 'package:cat_trivia/presentation/common/ui/buttons/app_button.dart';
import 'package:cat_trivia/presentation/common/ui/loading/app_loading_overlay.dart';
import 'package:cat_trivia/presentation/features/history/history_screen.dart';
import 'package:cat_trivia/presentation/features/home/home_cubit.dart';
import 'package:cat_trivia/presentation/features/home/home_state.dart';
import 'package:cat_trivia/service_locator/app_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  late final _screenBloc = getIt<HomeCubit>();

  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.strings.homeScreenTitle),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: _screenBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingOverlay();
          } else if (state.loadingException != null) {
            return AppTryAgainError(
              message: state.loadingException.toString(),
              onTryAgain: _screenBloc.loadCatFact,
            );
          } else {
            return SafeArea(
              child: Column(
                children: [
                  _Image(imageUrl: state.catImageUrl),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Spacer(),
                          _FactText(text: state.catFact!.text),
                          const SizedBox(height: 16),
                          _FactDateText(date: state.catFact!.updatedAt),
                          const Spacer(),
                          Row(
                            children: [
                              AppButton(
                                text: context.strings.homeScreenAction,
                                onPressed: _getNextFact,
                              ),
                              const SizedBox(width: 16),
                              AppButton(
                                text: context.strings.historyScreenTitle,
                                onPressed: () => _openHistory(context),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  void _openHistory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HistoryScreen(),
      ),
    );
  }

  void _getNextFact() {
    _screenBloc.loadCatFact();
  }
}

class _Image extends StatelessWidget {
  final String? imageUrl;

  const _Image({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.network(
        imageUrl ?? "",
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: (context, exception, stackTrace) {
          return Center(
            child: Text(
              context.strings.homeScreenImageLoadingError,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 28),
            ),
          );
        },
        fit: BoxFit.cover,
      ),
    );
  }
}

class _FactText extends StatelessWidget {
  final String text;

  const _FactText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}

class _FactDateText extends StatelessWidget {
  final DateTime? date;

  const _FactDateText({
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('dd.MM.yyyy').format(date ?? DateTime.now()),
      textAlign: TextAlign.center,
      style: const TextStyle(color: AppColors.grey),
    );
  }
}
