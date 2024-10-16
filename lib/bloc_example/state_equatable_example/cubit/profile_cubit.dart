import 'package:bloc/bloc.dart';
import 'package:teamup/bloc_example/basic_fecth_api/repository/cat_repository.dart';
import 'package:teamup/bloc_example/state_equatable_example/model/profile_model.dart';
import 'package:equatable/equatable.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  Future<void> fetchProfile() async {
    try {
      emit(ProfileLoading());

      await Future.delayed(const Duration(seconds: 2));
      var model = const ProfileModel(
        firstName: 'John',
        lastName: 'Doe',
        age: 25,
        phoneNumber: 123456789,
      );

      emit(ProfileDone(model));
    } on NetworkError catch (e) {
      emit(ProfileError(e.message));
    }
  }

  Future<void> updateProfile() async {
    try {
      emit(ProfileLoading());

      await Future.delayed(const Duration(seconds: 2));

      final currentState = state as ProfileDone;
      final updatedProfile =
          currentState.profileModel.copyWith(firstName: "firstName");
      emit(currentState.copyWith(profile: updatedProfile));
      emit(ProfileDone(updatedProfile));
    } on NetworkError catch (e) {
      emit(ProfileError(e.message));
    }
  }
}
