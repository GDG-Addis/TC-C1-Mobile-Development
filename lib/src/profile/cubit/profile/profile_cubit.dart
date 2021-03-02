import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';
import 'package:meta/meta.dart';
part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileRepository _profileRepository;

  ProfileCubit(this._profileRepository)
      : assert(_profileRepository != null),
        super(const ProfileState.initial());

  Future<void> get() {
    emit(ProfileLoadingState());
    return _get();
  }

  Future<void> refresh() {
    emit(ProfileRefreshingState());
    return _get();
  }

  Future<void> _get() async {
    try {
      final profile = await _profileRepository.get();
      emit(ProfileLoadedState(profile: profile));
    } catch (error) {
      emit(ProfileErrorState(error: error?.toString()));
    }
  }
}
