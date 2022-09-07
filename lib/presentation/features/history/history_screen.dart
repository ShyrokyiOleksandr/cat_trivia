import 'package:cat_trivia/presentation/common/extensions/build_context_extensions.dart';
import 'package:cat_trivia/presentation/common/ui/app_bar/app_app_bar.dart';
import 'package:cat_trivia/presentation/common/ui/app_try_again_error.dart';
import 'package:cat_trivia/presentation/common/ui/loading/app_loading_overlay.dart';
import 'package:cat_trivia/presentation/features/history/history_cubit.dart';
import 'package:cat_trivia/presentation/features/history/history_state.dart';
import 'package:cat_trivia/service_locator/app_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatelessWidget {
  late final _screenBloc = getIt<HistoryCubit>();

  HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.strings.historyScreenTitle),
      body: BlocBuilder<HistoryCubit, HistoryState>(
        bloc: _screenBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingOverlay();
          } else if (state.loadingException != null) {
            return AppTryAgainError(
              message: state.loadingException.toString(),
              onTryAgain: _screenBloc.loadCatFactsHistory,
            );
          } else {
            return SafeArea(
              child: state.catFacts!.isEmpty
                  ? const _HistoryEmptyText()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        itemCount: state.catFacts!.length,
                        itemBuilder: (context, index) {
                          return _HistoryItem(
                            text: state.catFacts![index].text,
                            date: state.catFacts![index].updatedAt,
                          );
                        },
                      ),
                    ),
            );
          }
        },
      ),
    );
  }
}

class _HistoryEmptyText extends StatelessWidget {
  const _HistoryEmptyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.strings.historyScreenNoItems));
  }
}

class _HistoryItem extends StatelessWidget {
  final String text;
  final DateTime? date;

  const _HistoryItem({
    required this.text,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(text),
        subtitle: Text(
          DateFormat('dd.MM.yyyy').format(
            date ?? DateTime.now(),
          ),
        ),
      ),
    );
  }
}
