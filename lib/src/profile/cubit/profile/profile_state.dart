part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.error({@required String error}) =
      ProfileErrorState;

  const factory ProfileState.initial() = InitialProfileState;

  const factory ProfileState.loaded({@required Profile profile}) =
      ProfileLoadedState;

  const factory ProfileState.loading() = ProfileLoadingState;

  const factory ProfileState.refreshing() = ProfileRefreshingState;
}
