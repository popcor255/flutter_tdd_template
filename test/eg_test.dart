import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'mock/mock_data_reader.dart';

//https://pub.dev/documentation/test/latest/

abstract class Calculator {
  int add(n1, n2);
}

class MockCalculator extends Mock implements Calculator {}

void main() {
  MockCalculator mockCalculator;
  //setup classes
  setUp(() {
    mockCalculator = MockCalculator();
  });

  group('mockCalculator', () {
    test(
      'should return 1 + 1 = 2',
      () async {
        //arange
        when(mockCalculator.add(1, 1)).thenReturn(2);
        //act
        final sum = jsonDecode(mockData("test.json"))["number"];
        final result = mockCalculator.add(1, 1);
        //assert
        verify(mockCalculator.add(1, 1));
        expect(sum, equals(result));
      },
    );
  });
}
