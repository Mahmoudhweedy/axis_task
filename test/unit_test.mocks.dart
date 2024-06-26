// Mocks generated by Mockito 5.4.4 from annotations
// in axis_task/test/unit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:axis_task/features/actors/data/api_services/api_service.dart'
    as _i4;
import 'package:axis_task/features/actors/data/models/actor_images_response.dart'
    as _i3;
import 'package:axis_task/features/actors/data/models/actor_response.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeActorResponse_0 extends _i1.SmartFake implements _i2.ActorResponse {
  _FakeActorResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeActorImagesResponse_1 extends _i1.SmartFake
    implements _i3.ActorImagesResponse {
  _FakeActorImagesResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ActorsApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockActorsApiService extends _i1.Mock implements _i4.ActorsApiService {
  MockActorsApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.ActorResponse> getAllActors(int? pageKey) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllActors,
          [pageKey],
        ),
        returnValue: _i5.Future<_i2.ActorResponse>.value(_FakeActorResponse_0(
          this,
          Invocation.method(
            #getAllActors,
            [pageKey],
          ),
        )),
      ) as _i5.Future<_i2.ActorResponse>);

  @override
  _i5.Future<_i3.ActorImagesResponse> getActorImages(int? actorId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getActorImages,
          [actorId],
        ),
        returnValue: _i5.Future<_i3.ActorImagesResponse>.value(
            _FakeActorImagesResponse_1(
          this,
          Invocation.method(
            #getActorImages,
            [actorId],
          ),
        )),
      ) as _i5.Future<_i3.ActorImagesResponse>);
}
