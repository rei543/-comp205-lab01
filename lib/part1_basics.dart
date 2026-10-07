// Part 1 - Basics: strings, null safety, named parameters.
// Replace every `throw UnimplementedError(...)` with your own code.

/// Returns a greeting such as "Hello, Ada!".
///
/// [greeting] is optional and defaults to "Hello".
/// If [excited] is true, the greeting ends with "!!!" instead of "!".
String greet(String name, {String greeting = 'Hello', bool excited = false}) {
  // TODO(1.1): use string interpolation, for example '$greeting, $name'.
  final String punctuation = excited ? '!!!' : '!';
  return '$greeting, $name$punctuation';
}

/// Parses [input] into an age.
///
/// Spaces around the number are allowed: " 21 " -> 21.
/// Returns null if [input] is not a whole number or is negative.
int? parseAge(String input) {
  // TODO(1.2): look up int.tryParse and String.trim in the Dart docs.
  final int? age = int.tryParse(input.trim());
  if (age == null || age < 0) {
    return null;
  }
  return age;
}

/// Describes an age group:
/// null -> "unknown", 0-12 -> "child", 13-17 -> "teen", 18 or more -> "adult".
String describeAge(int? age) => switch (age) {
      // TODO(1.3): handle null first - after that, Dart knows age is an int.
      null => 'unknown',
      < 0 => 'unknown',
      <= 12 => 'child',
      <= 17 => 'teen',
      _ => 'adult',
    };

/// Returns the length of [text], or 0 if [text] is null.
///
/// Use null-aware operators (?. and ??), not an if statement.
int safeLength(String? text) {
  // TODO(1.4): one line is enough.
  return text?.length ?? 0;
}
