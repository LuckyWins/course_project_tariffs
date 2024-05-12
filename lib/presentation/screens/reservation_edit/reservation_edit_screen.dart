import 'dart:async';

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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

  int? _userId;
  DateTime? _startDate;
  late int _hours;

  final _formKey = GlobalKey<FormState>();

  bool get isEdit =>
      _reservation != null &&
      (_reservation!.startDate != _startDate || _reservation!.hours != _hours);

  String? _hoursError;

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
            if (state.data.userId != -1) {
              _userId = state.data.userId;
            }
            unawaited(context.read<UserDataCubit>().init(_userId));
            _startDate = state.data.startDate;
            _hours = state.data.hours;
            setState(() {});
            return null;
          },
        ),
        child: DismissOutside(
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
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (context.isAdmin && !widget.isEdit)
                                    BlocBuilder<UserDataCubit, UserDataState>(
                                      builder: (context, state) =>
                                          state.maybeMap(
                                        hasData: (state) =>
                                            EditItemDropdownCustom(
                                          context: context,
                                          label: context.t.screens
                                              .reservationEdit.userField.label,
                                          onTap: _onUserSelectTap,
                                          isEmpty: _userId == null,
                                          builder: (context) =>
                                              _userId != null &&
                                                      state.data != null
                                                  ? Text(state.data!.username)
                                                  : const SizedBox.shrink(),
                                        ),
                                        orElse: LoadingIndicator.new,
                                      ),
                                    ),
                                  const SizedBox(height: 16),
                                  EditItemDateField(
                                    label: context.t.screens.reservationEdit
                                        .startDateField.label,
                                    value: _startDate,
                                    builder: (context, date) => Text(
                                        DateFormat('dd/MM/y').format(date)),
                                    onChange: (value) {
                                      final now = DateTime.now();
                                      setState(() {
                                        _startDate = DateTime(
                                          value.year,
                                          value.month,
                                          value.day,
                                          (_startDate ?? now).hour,
                                        );
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  EditItemDateField(
                                    type: DateFieldType.time,
                                    label: context.t.screens.reservationEdit
                                        .startHoursField.label,
                                    value: _startDate,
                                    builder: (context, date) =>
                                        Text(DateFormat('HH:mm').format(date)),
                                    onChange: (value) {
                                      final now = DateTime.now();
                                      setState(() {
                                        _startDate = DateTime(
                                          (_startDate ?? now).year,
                                          (_startDate ?? now).month,
                                          (_startDate ?? now).day,
                                          value.hour,
                                        );
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          context.t.screens.reservationEdit
                                              .hoursSelectLabel,
                                          style: AppTextStyles.body1(context),
                                        ),
                                      ),
                                      _hoursSelectWidget,
                                    ],
                                  ),
                                  if (_hoursError != null)
                                    Text(
                                      _hoursError!,
                                      style:
                                          AppTextStyles.body1(context).copyWith(
                                        color: context.colors.error,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      AppBottomButtonWrapper(
                        child: BlocPrimaryButton<ReservationEditCubit,
                            ReservationEditState>(
                          context.t.general.actions.save,
                          onTap: isEdit ? _onProceedTap : null,
                          builder: (context, state) => state.maybeMap(
                            loading: (state) => BlocActionButtonState.loading,
                            orElse: () => BlocActionButtonState.idle,
                          ),
                        ),
                      ),
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
        ),
      );

  Widget get _hoursSelectWidget => Row(
        children: [
          IconButton(
            onPressed: _hours > 0
                ? () {
                    setState(() {
                      _hours--;
                    });
                  }
                : null,
            icon: const Icon(Icons.remove_rounded),
          ),
          const SizedBox(width: 4),
          Text(
            '$_hours',
            style: AppTextStyles.body1(context),
          ),
          const SizedBox(width: 4),
          IconButton(
            onPressed: () {
              setState(() {
                _hours++;
              });
            },
            icon: const Icon(Icons.add_rounded),
          ),
        ],
      );

  Future<void> _onUserSelectTap() async {
    final value = await Navigation.toUserSelect(
      selectedId: _userId,
    );
    if (value != null) {
      setState(() {
        _userId = value.id;
      });
      unawaited(context.read<UserDataCubit>().init(value.id));
    }
  }

  void _onProceedTap() {
    if (_hours == 0) {
      setState(() {
        _hoursError = context.t.widgets.generalEditItem.errors.mandatory;
      });
      return;
    } else {
      if (_hoursError != null) {
        setState(() {
          _hoursError = null;
        });
      }
    }
    if (_formKey.currentState?.validate() ?? false) {
      final data = _reservation!.copyWith(
        userId: _userId!,
        startDate: _startDate!,
        hours: _hours,
      );
      context.read<ReservationEditCubit>().update(data);
    }
  }

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
