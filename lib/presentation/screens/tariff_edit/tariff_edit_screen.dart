import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class TariffEditScreen extends StatefulWidget {
  final bool isEdit;

  const TariffEditScreen({
    super.key,
    required this.isEdit,
  });

  @override
  State<TariffEditScreen> createState() => _TariffEditScreenState();
}

class _TariffEditScreenState extends State<TariffEditScreen> {
  AppTariffEntity? _tariff;

  final _titleController = TextEditingController();
  double _price = 0;
  final _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool get isEdit =>
      _tariff != null &&
      (_tariff!.title != _titleController.text ||
          _tariff!.price != _price ||
          _tariff!.description != _descriptionController.text);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TariffEditCubit>().init();
    });
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<TariffEditCubit, TariffEditState>(
        listener: (context, state) => state.mapOrNull(
          updatedSuccessful: (_) {
            context.read<TariffsCubit>().init();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  widget.isEdit
                      ? context.t.screens.tariffEdit.snack.editSuccessfully
                      : context.t.screens.tariffEdit.snack.addSuccessfully,
                ),
              ),
            );
            return null;
          },
          deletedSuccessful: (_) {
            context.read<TariffsCubit>().init();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  context.t.screens.tariffEdit.snack.deleteSuccessfully,
                ),
              ),
            );
            return null;
          },
          hasData: (state) {
            _tariff = state.data;
            _titleController.text = _tariff!.title;
            _price = state.data.price;
            _descriptionController.text = _tariff!.description;
            setState(() {});
            return null;
          },
        ),
        child: DismissOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                widget.isEdit
                    ? context.t.screens.tariffEdit.title.edit
                    : context.t.screens.tariffEdit.title.add,
              ),
              actions: [
                if (widget.isEdit && _tariff != null)
                  IconButton(
                    onPressed: _onAddReservationTap,
                    icon: const Icon(
                      Icons.emoji_people_rounded,
                    ),
                  ),
                if (widget.isEdit && _tariff != null)
                  IconButton(
                    onPressed: _onDeleteTap,
                    icon: Icon(
                      Icons.delete_rounded,
                      color: context.colors.error,
                    ),
                  ),
              ],
            ),
            body: _tariff != null
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
                                children: [
                                  EditItemField(
                                    controller: _titleController,
                                    label: context
                                        .t.screens.tariffEdit.titleField.label,
                                    onChanged: (_) {
                                      setState(() {});
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  PriceFieldWidget(
                                    value: _tariff!.price,
                                    onChanged: (value) {
                                      setState(() {
                                        _price = value;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  EditItemField(
                                    controller: _descriptionController,
                                    minLines: 3,
                                    maxLines: 10,
                                    label: context.t.screens.tariffEdit
                                        .descriptionField.label,
                                    mandatory: false,
                                    onChanged: (_) {
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      AppBottomButtonWrapper(
                        child:
                            BlocPrimaryButton<TariffEditCubit, TariffEditState>(
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

  void _onProceedTap() {
    if (_formKey.currentState?.validate() ?? false) {
      final data = _tariff!.copyWith(
        title: _titleController.text,
        price: _price,
        description: _descriptionController.text,
      );
      context.read<TariffEditCubit>().update(data);
    }
  }

  void _onAddReservationTap() {
    Navigation.toReservationEdit(
      tariffId: _tariff!.id,
      tariffOwnerId: _tariff!.ownerId,
    );
  }

  void _onDeleteTap() {
    Multiplatform.showMessage(
      context: context,
      title: context.t.screens.tariffEdit.modal.deleteConfirmation.message,
      buttonText: context.t.screens.tariffEdit.modal.deleteConfirmation.action,
      onTapAction: () => context.read<TariffEditCubit>().delete(),
    );
  }
}
