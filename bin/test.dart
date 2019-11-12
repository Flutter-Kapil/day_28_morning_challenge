import '../bin/main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(
        flattenList([
          [2],
          2,
          [2]
        ], []),
        [2, 2, 2]);
    expect(
        flattenList([
          1,
          "2",
          [
            3,
            () => 4,
            ["five"],
            "six",
            true,
            {'prop': "val"}
          ]
        ], []),
        [
          1,
          "2",
          3,
          4,
          "five",
          "six",
          true,
          {'prop': "val"}
        ]);
  });
}
