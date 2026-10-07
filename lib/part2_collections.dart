// Part 2 - Collections: List, Map, records, collection-if and spread.

/// Returns only the even numbers of [numbers], in the same order.
List<int> evens(List<int> numbers) {
  // TODO(2.1): try where(...) and toList().
  return numbers.where((n) => n.isEven).toList();
}

/// Counts how often each word appears in [text].
///
/// Words are separated by whitespace (spaces, tabs, new lines).
/// Counting is case-insensitive: "The" and "the" are the same word.
/// Example: "The cat the" -> {"the": 2, "cat": 1}
Map<String, int> wordCount(String text) {
  // TODO(2.2): hint: text.trim().toLowerCase().split(RegExp(r'\s+')), and skip empty words.
  var count = <String, int>{};
  var cleaned = text.trim().toLowerCase();

  if (cleaned.isEmpty) return count;

  for (var word in cleaned.split(RegExp(r'\s+'))) {
    if (word.isEmpty) continue;
    count[word] = (count[word] ?? 0) + 1;
  }

  return count;
}

/// Returns the smallest and the largest value of [numbers] as a record.
///
/// Throws an [ArgumentError] if [numbers] is empty.
(int, int) minMax(List<int> numbers) {
  // TODO(2.3): a record is written like (low, high).
  if (numbers.isEmpty) {
    throw ArgumentError('List cannot be empty');
  }

  var low = numbers.first;
  var high = numbers.first;

  for (var e in numbers) {
    if (e < low) low = e;
    if (e > high) high = e;
  }

  return (low, high);
}

/// Builds the items of an app menu.
///
/// The list always starts with "Home".
/// "Admin" comes next, but only if [isAdmin] is true.
/// All [extras] are added at the end, in order.
/// Use collection-if and the spread operator (...).
List<String> buildMenu({bool isAdmin = false, List<String> extras = const []}) {
  // TODO(2.4): one list literal is enough.
  return ['Home', if (isAdmin) 'Admin', ...extras];
}
