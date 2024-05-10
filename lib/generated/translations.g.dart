/// Generated file. Do not edit.
///
/// Original: assets/langs
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 34
///
/// Built on 2024-05-10 at 19:46 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/api/translation_overrides.dart';
import 'package:slang/builder/model/build_model_config.dart';
import 'package:slang/builder/model/context_type.dart';
import 'package:slang/builder/model/enums.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

/// Generated by the "Translation Overrides" feature.
/// This config is needed to recreate the translation model exactly
/// the same way as this file was created.
final _buildConfig = BuildModelConfig(
	fallbackStrategy: FallbackStrategy.baseLocale,
	keyCase: CaseStyle.camel,
	keyMapCase: null,
	paramCase: CaseStyle.camel,
	stringInterpolation: StringInterpolation.braces,
	maps: ['models.theme.name', 'widgets.mainWrapper.nav'],
	pluralAuto: PluralAuto.cardinal,
	pluralParameter: 'n',
	pluralCardinal: ['someKey.apple'],
	pluralOrdinal: ['someKey.place'],
	contexts: [ContextType(enumName: 'GenderContext', enumValues: ['male', 'female'], paths: ['my.path.to.greet'], defaultParameter: 'context', generateEnum: true),],
	interfaces: [], // currently not supported
);

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
	static void overrideTranslations({required AppLocale locale, required FileType fileType, required String content}) => instance.overrideTranslations(locale: locale, fileType: fileType, content: content);
	static void overrideTranslationsFromMap({required AppLocale locale, required bool isFlatMap, required Map map}) => instance.overrideTranslationsFromMap(locale: locale, isFlatMap: isFlatMap, map: map);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values, buildConfig: _buildConfig);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static Translations buildWithOverrides({required AppLocale locale, required FileType fileType, required String content, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.buildWithOverrides(locale: locale, fileType: fileType, content: content, cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
	static Translations buildWithOverridesFromMap({required AppLocale locale, required bool isFlatMap, required Map map, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.buildWithOverridesFromMap(locale: locale, isFlatMap: isFlatMap, map: map, cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
}

// context enums

enum GenderContext {
	male,
	female,
}

// interfaces generated as mixins

mixin PageData2 {
	String get title;
	String? get content => null;

	@override
	bool operator ==(Object other) => other is PageData2 && title == other.title && content == other.content;

	@override
	int get hashCode => title.hashCode * content.hashCode;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsModelsEn models = _TranslationsModelsEn._(_root);
	late final _TranslationsScreensEn screens = _TranslationsScreensEn._(_root);
	late final _TranslationsGeneralEn general = _TranslationsGeneralEn._(_root);
	late final _TranslationsWidgetsEn widgets = _TranslationsWidgetsEn._(_root);
	late final _TranslationsExceptionsEn exceptions = _TranslationsExceptionsEn._(_root);
}

// Path: models
class _TranslationsModelsEn {
	_TranslationsModelsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsModelsThemeEn theme = _TranslationsModelsThemeEn._(_root);
}

// Path: screens
class _TranslationsScreensEn {
	_TranslationsScreensEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsScreensSplashEn splash = _TranslationsScreensSplashEn._(_root);
	late final _TranslationsScreensSignInEn signIn = _TranslationsScreensSignInEn._(_root);
	late final _TranslationsScreensSignUpEn signUp = _TranslationsScreensSignUpEn._(_root);
	late final _TranslationsScreensTariffsEn tariffs = _TranslationsScreensTariffsEn._(_root);
	late final _TranslationsScreensSettingsEn settings = _TranslationsScreensSettingsEn._(_root);
	late final _TranslationsScreensProfileEditEn profileEdit = _TranslationsScreensProfileEditEn._(_root);
	late final _TranslationsScreensReservationsEn reservations = _TranslationsScreensReservationsEn._(_root);
}

// Path: general
class _TranslationsGeneralEn {
	_TranslationsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsGeneralActionsEn actions = _TranslationsGeneralActionsEn._(_root);
	String get unknownLabel => TranslationOverrides.string(_root.$meta, 'general.unknownLabel', {}) ?? 'Unknown';
	late final _TranslationsGeneralErrorModalEn errorModal = _TranslationsGeneralErrorModalEn._(_root);
}

// Path: widgets
class _TranslationsWidgetsEn {
	_TranslationsWidgetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsWidgetsLoginFieldEn loginField = _TranslationsWidgetsLoginFieldEn._(_root);
	late final _TranslationsWidgetsPasswordFieldEn passwordField = _TranslationsWidgetsPasswordFieldEn._(_root);
	late final _TranslationsWidgetsGeneralEditItemEn generalEditItem = _TranslationsWidgetsGeneralEditItemEn._(_root);
	late final _TranslationsWidgetsMainWrapperEn mainWrapper = _TranslationsWidgetsMainWrapperEn._(_root);
}

// Path: exceptions
class _TranslationsExceptionsEn {
	_TranslationsExceptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get network => TranslationOverrides.string(_root.$meta, 'exceptions.network', {}) ?? 'Failed to connect to server';
}

// Path: models.theme
class _TranslationsModelsThemeEn {
	_TranslationsModelsThemeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	Map<String, String> get name => TranslationOverrides.map(_root.$meta, 'models.theme.name') ?? {
		'light': 'Light mode',
		'dark': 'Dark mode',
		'system': 'Automatic',
	};
}

// Path: screens.splash
class _TranslationsScreensSplashEn {
	_TranslationsScreensSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loadingMessage => TranslationOverrides.string(_root.$meta, 'screens.splash.loadingMessage', {}) ?? 'Please wait';
}

// Path: screens.signIn
class _TranslationsScreensSignInEn {
	_TranslationsScreensSignInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.signIn.title', {}) ?? 'Sign in';
	String get proceedButton => TranslationOverrides.string(_root.$meta, 'screens.signIn.proceedButton', {}) ?? 'Log in';
	late final _TranslationsScreensSignInSignUpLabelEn signUpLabel = _TranslationsScreensSignInSignUpLabelEn._(_root);
}

// Path: screens.signUp
class _TranslationsScreensSignUpEn {
	_TranslationsScreensSignUpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.signUp.title', {}) ?? 'Sign up';
	String get proceedButton => TranslationOverrides.string(_root.$meta, 'screens.signUp.proceedButton', {}) ?? 'Sign up';
	late final _TranslationsScreensSignUpSignInLabelEn signInLabel = _TranslationsScreensSignUpSignInLabelEn._(_root);
}

// Path: screens.tariffs
class _TranslationsScreensTariffsEn {
	_TranslationsScreensTariffsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.tariffs.title', {}) ?? 'Tariffs';
}

// Path: screens.settings
class _TranslationsScreensSettingsEn {
	_TranslationsScreensSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.settings.title', {}) ?? 'Settings';
	String get username => TranslationOverrides.string(_root.$meta, 'screens.settings.username', {}) ?? 'Username';
	late final _TranslationsScreensSettingsRealNameFieldEn realNameField = _TranslationsScreensSettingsRealNameFieldEn._(_root);
	late final _TranslationsScreensSettingsBioFieldEn bioField = _TranslationsScreensSettingsBioFieldEn._(_root);
}

// Path: screens.profileEdit
class _TranslationsScreensProfileEditEn {
	_TranslationsScreensProfileEditEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.profileEdit.title', {}) ?? 'Edit profile';
	late final _TranslationsScreensProfileEditSnackEn snack = _TranslationsScreensProfileEditSnackEn._(_root);
}

// Path: screens.reservations
class _TranslationsScreensReservationsEn {
	_TranslationsScreensReservationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'screens.reservations.title', {}) ?? 'Reservations';
}

// Path: general.actions
class _TranslationsGeneralActionsEn {
	_TranslationsGeneralActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => TranslationOverrides.string(_root.$meta, 'general.actions.ok', {}) ?? 'Ok';
	String get save => TranslationOverrides.string(_root.$meta, 'general.actions.save', {}) ?? 'Save';
}

// Path: general.errorModal
class _TranslationsGeneralErrorModalEn {
	_TranslationsGeneralErrorModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'general.errorModal.title', {}) ?? 'Error';
}

// Path: widgets.loginField
class _TranslationsWidgetsLoginFieldEn {
	_TranslationsWidgetsLoginFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => TranslationOverrides.string(_root.$meta, 'widgets.loginField.label', {}) ?? 'Email';
	late final _TranslationsWidgetsLoginFieldErrorsEn errors = _TranslationsWidgetsLoginFieldErrorsEn._(_root);
}

// Path: widgets.passwordField
class _TranslationsWidgetsPasswordFieldEn {
	_TranslationsWidgetsPasswordFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => TranslationOverrides.string(_root.$meta, 'widgets.passwordField.label', {}) ?? 'Password';
	String description({required Object minLength}) => TranslationOverrides.string(_root.$meta, 'widgets.passwordField.description', {'minLength': minLength}) ?? 'Use ${minLength} or more characters';
	late final _TranslationsWidgetsPasswordFieldErrorsEn errors = _TranslationsWidgetsPasswordFieldErrorsEn._(_root);
}

// Path: widgets.generalEditItem
class _TranslationsWidgetsGeneralEditItemEn {
	_TranslationsWidgetsGeneralEditItemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsWidgetsGeneralEditItemErrorsEn errors = _TranslationsWidgetsGeneralEditItemErrorsEn._(_root);
}

// Path: widgets.mainWrapper
class _TranslationsWidgetsMainWrapperEn {
	_TranslationsWidgetsMainWrapperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	Map<String, String> get nav => TranslationOverrides.map(_root.$meta, 'widgets.mainWrapper.nav') ?? {
		'tariffs': 'Tariffs',
		'reservations': 'Reservations',
		'settings': 'Settings',
	};
}

// Path: screens.signIn.signUpLabel
class _TranslationsScreensSignInSignUpLabelEn {
	_TranslationsScreensSignInSignUpLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => TranslationOverrides.string(_root.$meta, 'screens.signIn.signUpLabel.text', {}) ?? 'Don\'t have an account?';
	String get button => TranslationOverrides.string(_root.$meta, 'screens.signIn.signUpLabel.button', {}) ?? 'Sign up';
}

// Path: screens.signUp.signInLabel
class _TranslationsScreensSignUpSignInLabelEn {
	_TranslationsScreensSignUpSignInLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => TranslationOverrides.string(_root.$meta, 'screens.signUp.signInLabel.text', {}) ?? 'Already have an account?';
	String get button => TranslationOverrides.string(_root.$meta, 'screens.signUp.signInLabel.button', {}) ?? 'Sign in';
}

// Path: screens.settings.realNameField
class _TranslationsScreensSettingsRealNameFieldEn {
	_TranslationsScreensSettingsRealNameFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => TranslationOverrides.string(_root.$meta, 'screens.settings.realNameField.label', {}) ?? 'Real name';
}

// Path: screens.settings.bioField
class _TranslationsScreensSettingsBioFieldEn {
	_TranslationsScreensSettingsBioFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => TranslationOverrides.string(_root.$meta, 'screens.settings.bioField.label', {}) ?? 'Bio';
}

// Path: screens.profileEdit.snack
class _TranslationsScreensProfileEditSnackEn {
	_TranslationsScreensProfileEditSnackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get savedSuccessfully => TranslationOverrides.string(_root.$meta, 'screens.profileEdit.snack.savedSuccessfully', {}) ?? 'Your profile has been updated successfully';
}

// Path: widgets.loginField.errors
class _TranslationsWidgetsLoginFieldErrorsEn {
	_TranslationsWidgetsLoginFieldErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get incorrect => TranslationOverrides.string(_root.$meta, 'widgets.loginField.errors.incorrect', {}) ?? 'The email must be a valid email address';
}

// Path: widgets.passwordField.errors
class _TranslationsWidgetsPasswordFieldErrorsEn {
	_TranslationsWidgetsPasswordFieldErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String minLength({required Object minLength}) => TranslationOverrides.string(_root.$meta, 'widgets.passwordField.errors.minLength', {'minLength': minLength}) ?? 'Password should be at least ${minLength} characters';
}

// Path: widgets.generalEditItem.errors
class _TranslationsWidgetsGeneralEditItemErrorsEn {
	_TranslationsWidgetsGeneralEditItemErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get mandatory => TranslationOverrides.string(_root.$meta, 'widgets.generalEditItem.errors.mandatory', {}) ?? 'Required field';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'models.theme.name.light': return TranslationOverrides.string(_root.$meta, 'models.theme.name.light', {}) ?? 'Light mode';
			case 'models.theme.name.dark': return TranslationOverrides.string(_root.$meta, 'models.theme.name.dark', {}) ?? 'Dark mode';
			case 'models.theme.name.system': return TranslationOverrides.string(_root.$meta, 'models.theme.name.system', {}) ?? 'Automatic';
			case 'screens.splash.loadingMessage': return TranslationOverrides.string(_root.$meta, 'screens.splash.loadingMessage', {}) ?? 'Please wait';
			case 'screens.signIn.title': return TranslationOverrides.string(_root.$meta, 'screens.signIn.title', {}) ?? 'Sign in';
			case 'screens.signIn.proceedButton': return TranslationOverrides.string(_root.$meta, 'screens.signIn.proceedButton', {}) ?? 'Log in';
			case 'screens.signIn.signUpLabel.text': return TranslationOverrides.string(_root.$meta, 'screens.signIn.signUpLabel.text', {}) ?? 'Don\'t have an account?';
			case 'screens.signIn.signUpLabel.button': return TranslationOverrides.string(_root.$meta, 'screens.signIn.signUpLabel.button', {}) ?? 'Sign up';
			case 'screens.signUp.title': return TranslationOverrides.string(_root.$meta, 'screens.signUp.title', {}) ?? 'Sign up';
			case 'screens.signUp.proceedButton': return TranslationOverrides.string(_root.$meta, 'screens.signUp.proceedButton', {}) ?? 'Sign up';
			case 'screens.signUp.signInLabel.text': return TranslationOverrides.string(_root.$meta, 'screens.signUp.signInLabel.text', {}) ?? 'Already have an account?';
			case 'screens.signUp.signInLabel.button': return TranslationOverrides.string(_root.$meta, 'screens.signUp.signInLabel.button', {}) ?? 'Sign in';
			case 'screens.tariffs.title': return TranslationOverrides.string(_root.$meta, 'screens.tariffs.title', {}) ?? 'Tariffs';
			case 'screens.settings.title': return TranslationOverrides.string(_root.$meta, 'screens.settings.title', {}) ?? 'Settings';
			case 'screens.settings.username': return TranslationOverrides.string(_root.$meta, 'screens.settings.username', {}) ?? 'Username';
			case 'screens.settings.realNameField.label': return TranslationOverrides.string(_root.$meta, 'screens.settings.realNameField.label', {}) ?? 'Real name';
			case 'screens.settings.bioField.label': return TranslationOverrides.string(_root.$meta, 'screens.settings.bioField.label', {}) ?? 'Bio';
			case 'screens.profileEdit.title': return TranslationOverrides.string(_root.$meta, 'screens.profileEdit.title', {}) ?? 'Edit profile';
			case 'screens.profileEdit.snack.savedSuccessfully': return TranslationOverrides.string(_root.$meta, 'screens.profileEdit.snack.savedSuccessfully', {}) ?? 'Your profile has been updated successfully';
			case 'screens.reservations.title': return TranslationOverrides.string(_root.$meta, 'screens.reservations.title', {}) ?? 'Reservations';
			case 'general.actions.ok': return TranslationOverrides.string(_root.$meta, 'general.actions.ok', {}) ?? 'Ok';
			case 'general.actions.save': return TranslationOverrides.string(_root.$meta, 'general.actions.save', {}) ?? 'Save';
			case 'general.unknownLabel': return TranslationOverrides.string(_root.$meta, 'general.unknownLabel', {}) ?? 'Unknown';
			case 'general.errorModal.title': return TranslationOverrides.string(_root.$meta, 'general.errorModal.title', {}) ?? 'Error';
			case 'widgets.loginField.label': return TranslationOverrides.string(_root.$meta, 'widgets.loginField.label', {}) ?? 'Email';
			case 'widgets.loginField.errors.incorrect': return TranslationOverrides.string(_root.$meta, 'widgets.loginField.errors.incorrect', {}) ?? 'The email must be a valid email address';
			case 'widgets.passwordField.label': return TranslationOverrides.string(_root.$meta, 'widgets.passwordField.label', {}) ?? 'Password';
			case 'widgets.passwordField.description': return ({required Object minLength}) => TranslationOverrides.string(_root.$meta, 'widgets.passwordField.description', {'minLength': minLength}) ?? 'Use ${minLength} or more characters';
			case 'widgets.passwordField.errors.minLength': return ({required Object minLength}) => TranslationOverrides.string(_root.$meta, 'widgets.passwordField.errors.minLength', {'minLength': minLength}) ?? 'Password should be at least ${minLength} characters';
			case 'widgets.generalEditItem.errors.mandatory': return TranslationOverrides.string(_root.$meta, 'widgets.generalEditItem.errors.mandatory', {}) ?? 'Required field';
			case 'widgets.mainWrapper.nav.tariffs': return TranslationOverrides.string(_root.$meta, 'widgets.mainWrapper.nav.tariffs', {}) ?? 'Tariffs';
			case 'widgets.mainWrapper.nav.reservations': return TranslationOverrides.string(_root.$meta, 'widgets.mainWrapper.nav.reservations', {}) ?? 'Reservations';
			case 'widgets.mainWrapper.nav.settings': return TranslationOverrides.string(_root.$meta, 'widgets.mainWrapper.nav.settings', {}) ?? 'Settings';
			case 'exceptions.network': return TranslationOverrides.string(_root.$meta, 'exceptions.network', {}) ?? 'Failed to connect to server';
			default: return null;
		}
	}
}
