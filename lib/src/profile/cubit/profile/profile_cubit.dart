import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileCubit(this._profileRepository)
      : assert(_profileRepository != null),
        super(const ProfileState.initial());

  Future<void> get() {
    emit(const ProfileLoadingState());
    return _get();
  }

  Future<void> refresh() {
    emit(const ProfileRefreshingState());
    return _get();
  }

  Future<void> _get() async {
    try {
      final profile = await _profileRepository.get();
      emit(ProfileLoadedState(profile: profile));
    } on AppError catch (error) {
      emit(ProfileErrorState(error: error?.toString()));
    }
  }
}
