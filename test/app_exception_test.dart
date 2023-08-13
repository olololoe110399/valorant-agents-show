import 'package:flutter_test/flutter_test.dart';
import 'package:valorant_agents_show/shared/app_exception.dart';

void main() {
  group('AppException Tests', () {
    test('AppException should have correct properties', () {
      final exception = AppException(
        message: 'Test Message',
        statusCode: 404,
        identifier: 'Test Identifier',
      );

      expect(exception.message, 'Test Message');
      expect(exception.statusCode, 404);
      expect(exception.identifier, 'Test Identifier');
    });

    // Add more test cases for AppException methods or extensions if needed
  });
}
