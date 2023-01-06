/*
 * Project Name:  [koreaJob]
 * File: /Users/bakbeom/work/Git/big5/test/big5_test.dart
 * Created Date: 2023-01-06 19:07:21
 * Last Modified: 2023-01-06 19:28:09
 * Author: bakbeom
 * Modified By: bakbeom
 * copyright @ 2023  MOMONETWORK ALL RIGHTS RESERVED. 
 * ---	---	---	---	---	---	---	---	---	---	---	---	---	---	---	---
 * 												Discription													
 * ---	---	---	---	---	---	---	---	---	---	---	---	---	---	---	---
 */

import 'package:flutter_big5/big5.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('decode some bytes of with big5 encoded', () {
    expect(Big5.decode([173, 68, 166, 184]), "胖次");
    expect(
        Big5.decode([
          27,
          91,
          49,
          59,
          51,
          49,
          109,
          166,
          226,
          189,
          88,
          180,
          250,
          184,
          213,
          27,
          91,
          48,
          109
        ]),
        "\x1b[1;31m色碼測試\x1b[0m");
  });
  test('encode some bytes of with big5 encoded', () {
    expect(Big5.encode("胖次"), [173, 68, 166, 184]);
    expect(Big5.encode("\x1b[1;31m色碼測試\x1b[0m"), [
      27,
      91,
      49,
      59,
      51,
      49,
      109,
      166,
      226,
      189,
      88,
      180,
      250,
      184,
      213,
      27,
      91,
      48,
      109
    ]);
  });
}
