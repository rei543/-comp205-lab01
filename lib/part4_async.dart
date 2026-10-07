// Part 4 - Asynchronous code with Future, async and await.

/// Simulates a slow network call.
///
/// Waits for [delay], then returns "Hello, <name>".
Future<String> fetchGreeting(
  String name, {
  Duration delay = const Duration(milliseconds: 50),
}) async {
  // TODO(4.1): await Future.delayed(delay); then return the greeting.
  await Future.delayed(delay);
  return 'Hello, $name';
}

/// Fetches a greeting for every name in [names], one after another.
///
/// The results are returned in the same order as [names].
Future<List<String>> fetchAll(List<String> names) async {
  // TODO(4.2): use a for loop with await inside.
  var greetings = <String>[];
  for (var name in names) {
    var greeting = await fetchGreeting(name);
    greetings.add(greeting);
  }
  return greetings;
}

/// Runs [task] and returns its result.
///
/// If [task] throws an error, returns [fallback] instead.
Future<String> withFallback(
  Future<String> Function() task, {
  String fallback = 'offline',
}) async {
  // TODO(4.3): try { ... } catch (_) { ... }
  try {
    return await task();
  } catch (_) {
    return fallback;
  }
}
