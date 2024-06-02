import 'package:axis_task/core/network/api_constants.dart';
import 'package:axis_task/features/actors/data/api_services/api_service.dart';
import 'package:axis_task/features/actors/data/models/actor_images_response.dart';
import 'package:axis_task/features/actors/data/models/actor_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'unit_test.mocks.dart';

@GenerateMocks([ActorsApiService])
void main() {
  group('All Actors ApiService Tests', () {
    late MockActorsApiService mockApiService;

    setUp(() {
      mockApiService = MockActorsApiService();
    });

    test('Fetch actors - Success', () async {
      // Arrange
      final ActorResponse response = ActorResponse(actors: []);
      when(mockApiService.getAllActors(1)).thenAnswer((_) async => response);

      // Act
      final result = await mockApiService.getAllActors(1);

      // Assert
      expect(result, response);
      verify(mockApiService.getAllActors(1)).called(1);
    });

    test('Fetch actors - Error', () async {
      // Arrange
      when(mockApiService.getAllActors(1)).thenThrow(DioException(
        requestOptions: RequestOptions(path: ApiConstants.allActorsUrl),
        type: DioExceptionType.badResponse,
      ));

      // Act
      try {
        await mockApiService.getAllActors(1);
      } catch (e) {
        // Assert
        expect(e, isA<DioException>());
      }
    });
  });

  group('Actor Imges ApiService Tests', () {
    late MockActorsApiService mockApiService;

    setUp(() {
      mockApiService = MockActorsApiService();
    });

    test('Fetch images - Success', () async {
      // Arrange
      final ActorImagesResponse response = ActorImagesResponse(images: []);
      when(mockApiService.getActorImages(1)).thenAnswer((_) async => response);

      // Act
      final result = await mockApiService.getActorImages(1);

      // Assert
      expect(result, response);
      verify(mockApiService.getActorImages(1)).called(1);
    });

    test('Fetch images - Error', () async {
      // Arrange
      when(mockApiService.getActorImages(1)).thenThrow(DioException(
        requestOptions: RequestOptions(
            path: '/person/1/images?api_key=${ApiConstants.apiKey}'),
        type: DioExceptionType.badResponse,
      ));

      // Act
      try {
        await mockApiService.getActorImages(1);
      } catch (e) {
        // Assert
        expect(e, isA<DioException>());
      }
    });
  });
}
