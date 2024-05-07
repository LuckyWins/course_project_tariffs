# Runs `flutter pub get` in the package.
pub_get:
	echo "### Getting packages"
	flutter pub get

# Runs `dart run build_runner build -d` in the package.
generate_models_delete_conflicting:
	echo "### Generating sources"
	dart run build_runner build -d

# Runs `dart run build_runner build` in the package.
generate_models:
	echo "### Generating sources"
	dart run build_runner build

# Runs `dart run slang` in core project
generate_slang:
	dart run slang

.PHONY: pub_get generate_models_delete_conflicting generate_models generate_slang