import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  ProfileCubit profileCubit;
  ProfileRepository profileRepository;

  setUp(() {
    profileRepository = _MockProfileRepository();
    profileCubit = ProfileCubit(profileRepository);
  });

  tearDown(() => profileCubit?.close());

  test("throws AssertionError when repository is null", () {
    expect(() => ProfileCubit(null), throwsAssertionError);
  });

  group("get", () {
    final profile = _Fakes.profile;
    final mockException = Exception("something went wrong");

    blocTest<ProfileCubit, ProfileState>(
      "should emit [ ProfileLoadingState, ProfileLoadedState ] when profile is loaded",
      build: () {
        when(profileRepository.get()).thenAnswer((_) async => profile);
        return profileCubit;
      },
      act: (cubit) => cubit.get(),
      expect: [
        const ProfileLoadingState(),
        ProfileLoadedState(profile: profile),
      ],
    );

    blocTest<ProfileCubit, ProfileState>(
      "should emit [ ProfileLoadingState, ProfileErrorState ] when exception is thrown from the repository",
      build: () {
        when(profileRepository.get())
            .thenAnswer((_) async => throw mockException);
        return profileCubit;
      },
      act: (cubit) => cubit.get(),
      expect: [
        const ProfileLoadingState(),
        ProfileErrorState(error: mockException.toString()),
      ],
    );
  });

  group("refresh", () {
    final profile = _Fakes.profile;
    final mockException = Exception("something went wrong");

    blocTest<ProfileCubit, ProfileState>(
      "should emit [ ProfileRefreshingState, ProfileLoadedState ] when profile "
      "is refreshed",
      build: () {
        when(profileRepository.get()).thenAnswer((_) async => profile);
        return profileCubit;
      },
      act: (cubit) => cubit.refresh(),
      expect: [
        const ProfileRefreshingState(),
        ProfileLoadedState(profile: profile),
      ],
    );

    blocTest<ProfileCubit, ProfileState>(
      "should emit [ ProfileRefreshingState, ProfileErrorState] when exception "
      "is throw from the repository",
      build: () {
        when(profileRepository.get())
            .thenAnswer((_) async => throw mockException);
        return profileCubit;
      },
      act: (cubit) => cubit.refresh(),
      expect: [
        const ProfileRefreshingState(),
        ProfileErrorState(error: mockException.toString()),
      ],
    );
  });
}

class _Fakes {
  static Profile get profile {
    return Profile(
      id: 1,
      phone: 'some phone',
      username: 'username',
      email: 'some@mail.com',
      fullName: FullName(
        firstName: 'firstname',
        lastName: 'lastname',
      ),
      address: Address(
        city: 'some city',
        street: 'street',
        number: 1234,
        zipcode: '98s79d',
        geolocation: Geolocation(
          lat: '9.4287492384',
          lng: '38.98732492',
        ),
      ),
    );
  }
}

class _MockProfileRepository extends Mock implements ProfileRepository {}
