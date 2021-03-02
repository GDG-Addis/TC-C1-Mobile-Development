import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

import '../../model/profile/mock.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  ProfileRepository profileRepository;

  setUpAll(() {
    profileRepository = MockProfileRepository();
  });

  test("throws Assertion error when repository is null", () {
    expect(() => ProfileCubit(null), throwsAssertionError);
  });
  group("Get", () {
    final mockException = Exception("something went wrong");
    blocTest<ProfileCubit, ProfileState>(
        "Get will return profileLoading then profileLoaded state",
        build: () => ProfileCubit(profileRepository),
        act: (cubit) {
          when(profileRepository.get())
              .thenAnswer((_) async => ProfileMock.model);
          return cubit.get();
        },
        expect: [
          ProfileState.loading(),
          ProfileState.loaded(profile: ProfileMock.model),
        ]);
    blocTest<ProfileCubit, ProfileState>(
        "Get will return profileLoading then ProfileError state if there was an exception on the repository",
        build: () => ProfileCubit(profileRepository),
        act: (cubit) async {
          when(profileRepository.get())
              .thenAnswer((_) async => throw mockException);
          await cubit.get();
        },
        expect: [
          ProfileState.loading(),
          ProfileState.error(error: mockException.toString()),
        ]);
  });
  group("Refresh", () {
    final mockException = Exception("something went wrong");
    blocTest<ProfileCubit, ProfileState>(
        "Refresh will return profileReloading then profileLoaded state",
        build: () => ProfileCubit(profileRepository),
        act: (cubit) {
          when(profileRepository.get())
              .thenAnswer((_) async => ProfileMock.model);
          return cubit.refresh();
        },
        expect: [
          ProfileState.refreshing(),
          ProfileState.loaded(profile: ProfileMock.model),
        ]);
    blocTest<ProfileCubit, ProfileState>(
        "Refresh will return profileReloading then ProfileError state if there was an exception on the repository",
        build: () => ProfileCubit(profileRepository),
        act: (cubit) async {
          when(profileRepository.get())
              .thenAnswer((_) async => throw mockException);
          await cubit.refresh();
        },
        expect: [
          ProfileState.refreshing(),
          ProfileState.error(error: mockException.toString()),
        ]);
  });
}
