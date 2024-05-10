import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({
    super.key,
  });

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  String? _defaultRealName;
  String? _defaultBio;

  final _realNameController = TextEditingController();
  final _bioController = TextEditingController();

  bool get isEdit =>
      _defaultRealName != _realNameController.text ||
      _defaultBio != _bioController.text;

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ProfileEditCubit, ProfileEditState>(
        listener: (context, state) => state.mapOrNull(
          updatedSuccessful: (state) {
            context.read<ProfileCubit>().updateUser(state.data);
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  context.t.screens.profileEdit.snack.savedSuccessfully,
                ),
              ),
            );
            return null;
          },
          hasData: (state) {
            _defaultRealName = state.data.profile?.realName ?? '';
            _defaultBio = state.data.profile?.bio ?? '';
            _realNameController.text = _defaultRealName ?? '';
            _bioController.text = _defaultBio ?? '';
            return null;
          },
        ),
        buildWhen: (prev, next) {
          final isPrevHasData = prev.mapOrNull(hasData: (_) => true) ?? false;
          final isNextLoading = prev.mapOrNull(loading: (_) => true) ?? false;
          return !(isPrevHasData && isNextLoading);
        },
        builder: (context, state) => DismissOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(context.t.screens.profileEdit.title),
            ),
            body: state.maybeMap(
              hasData: (state) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            TextField(
                              controller: _realNameController,
                              decoration: InputDecoration(
                                labelText: context
                                    .t.screens.settings.realNameField.label,
                              ),
                              onChanged: (_) {
                                setState(() {});
                              },
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: _bioController,
                              minLines: 3,
                              maxLines: 10,
                              decoration: InputDecoration(
                                labelText:
                                    context.t.screens.settings.bioField.label,
                                alignLabelWithHint: true,
                              ),
                              onChanged: (_) {
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppBottomButtonWrapper(
                    child:
                        BlocPrimaryButton<ProfileEditCubit, ProfileEditState>(
                      context.t.general.actions.save,
                      onTap: isEdit ? _onProceedTap : null,
                      builder: (context, state) => state.maybeMap(
                        loading: (state) => BlocActionButtonState.loading,
                        orElse: () => BlocActionButtonState.idle,
                      ),
                    ),
                  ),
                ],
              ),
              orElse: SizedBox.shrink,
            ),
          ),
        ),
      );

  void _onProceedTap() {
    final profile = AppUserProfile()
      ..bio = _bioController.text
      ..realName = _realNameController.text;
    context.read<ProfileEditCubit>().updateProfile(profile);
  }
}
