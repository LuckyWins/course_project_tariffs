import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReservationEditScreen extends StatefulWidget {
  final bool isEdit;
  final bool isAdmin;

  const ReservationEditScreen({
    super.key,
    required this.isEdit,
    required this.isAdmin,
  });

  @override
  State<ReservationEditScreen> createState() => _ReservationEditScreenState();
}

class _ReservationEditScreenState extends State<ReservationEditScreen> {
  AppReservationEntity? _reservation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReservationEditCubit>().init();
    });
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<ReservationEditCubit, ReservationEditState>(
        listener: (context, state) => state.mapOrNull(
          updatedSuccessful: (_) {
            context.read<ReservationsCubit>().init();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  widget.isEdit
                      ? context.t.screens.reservationEdit.snack.editSuccessfully
                      : context.t.screens.reservationEdit.snack.addSuccessfully,
                ),
              ),
            );
            return null;
          },
          cancelledSuccessful: (_) {
            context.read<ReservationsCubit>().init();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  context.t.screens.reservationEdit.snack.cancelSuccessfully,
                ),
              ),
            );
            return null;
          },
          hasData: (state) {
            _reservation = state.data;
            // TODO
            setState(() {});
            return null;
          },
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              widget.isEdit
                  ? context.t.screens.reservationEdit.title.edit
                  : context.t.screens.reservationEdit.title.add,
            ),
            actions: [
              if (widget.isEdit && _reservation != null)
                IconButton(
                  onPressed: _onCancelTap,
                  icon: Icon(
                    Icons.cancel_rounded,
                    color: context.colors.error,
                  ),
                ),
            ],
          ),
          body: _reservation != null
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // TODO
                  ],
                )
              : const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingIndicator(),
                  ],
                ),
        ),
      );

  void _onCancelTap() {
    Multiplatform.showMessage(
      context: context,
      title: context.t.screens.reservationEdit.modal.cancelConfirmation.message,
      buttonText:
          context.t.screens.reservationEdit.modal.cancelConfirmation.action,
      onTapAction: () => context.read<ReservationEditCubit>().cancel(),
    );
  }
}
