// Part 4 - YOU write the tests here (at least 3 more tests).
//
// Ideas:
//  - fetchAll keeps the order of the names
//  - withFallback returns the task's result when it succeeds
//  - withFallback returns 'offline' when the task throws
//  - withFallback uses a custom fallback value
import 'package:lab01_dart/part4_async.dart';
import 'package:test/test.dart';

void main() {
  // Example: an async test. Note `async` and `await`.
  test('fetchGreeting returns a greeting', () async {
    expect(await fetchGreeting('Ada', delay: Duration.zero), 'Hello, Ada');
  });

  // TODO(4.4): add your tests below.
  test('fetchAll keeps the order of the names', () async {
    final names = ['Ayşe', 'Ahmet', 'Elif'];
    final expectedGreetings = ['Hello, Ayşe', 'Hello, Ahmet', 'Hello, Elif'];
    expect(await fetchAll(names), expectedGreetings);
  });

  test('withFallback returns the results on success', () async {
    final success = await withFallback(
        () async => fetchGreeting('Ayşe', delay: Duration.zero));
    expect(success, 'Hello, Ayşe');
  });

  test('withFallback returns offline when the task throws', () async {
    final result = await withFallback(() async {
      throw Exception('Task failed');
    });

    expect(result, 'offline');
  });

  test('withFallback uses a custom fallback', () async {
    final result = await withFallback(() async {
      throw Exception('Task failed');
    }, fallback: 'custom fallback');

    expect(result, 'custom fallback');
  });
}
