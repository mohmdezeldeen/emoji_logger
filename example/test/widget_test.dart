import 'dart:async';

import 'package:emoji_logger/emoji_logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('EmojiLogger d should print', () {
    runZoned(
      () {
        EmojiLogger.d('test');
      },
      zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
          expect(line, '🐞 test');
        },
      ),
    );
  });
  test('EmojiLogger e should print', () {
    runZoned(
      () {
        EmojiLogger.e('test');
      },
      zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
          expect(line, '🚨 test');
        },
      ),
    );
  });
}
