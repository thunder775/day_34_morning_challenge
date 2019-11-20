import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('minRemoval', () {
    expect(minRemoval('root', 'boot'), 2);
  });
  test('hamming distance', () {
    expect(hammingDistance('listen', 'silent'), 5);
    expect(hammingDistance('read', 'dear'), 2);
    expect(isAnagram('balloon', 'balllooon'), false);
    expect(isAnagram('met', 'meet'), false);
    expect(isAnagram('mood', 'doom'), true);
  });
}
