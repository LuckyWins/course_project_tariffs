import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/theme/colors.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserSelectScreen extends StatefulWidget {
  final int? selectedId;

  const UserSelectScreen({
    super.key,
    required this.selectedId,
  });

  @override
  State<UserSelectScreen> createState() => _UserSelectScreenState();
}

class _UserSelectScreenState extends State<UserSelectScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<UsersListCubit>().state.maybeMap(
            hasData: (_) => false,
            orElse: () => true,
          )) {
        context.read<UsersListCubit>().init();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.userSelect.title),
        ),
        body: BlocBuilder<UsersListCubit, UsersListState>(
          builder: (context, state) => state.maybeMap(
            hasData: (state) => ListView.separated(
              itemCount: state.data.length,
              itemBuilder: (context, index) => _itemWidget(
                state.data[index],
              ),
              separatorBuilder: (context, _) => const Divider(),
            ),
            orElse: () => const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingIndicator(),
              ],
            ),
          ),
        ),
      );

  Widget _itemWidget(AppUser data) => ListTile(
        onTap: () {
          Navigator.of(context).pop<AppUser>(data);
        },
        title: Text(data.username),
        trailing: widget.selectedId == data.id
            ? Icon(
                Icons.check_rounded,
                color: context.colors.primary,
              )
            : null,
      );
}
