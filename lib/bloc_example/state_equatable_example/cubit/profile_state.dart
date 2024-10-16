part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileDone extends ProfileState {
  final ProfileModel profileModel;
  const ProfileDone(this.profileModel);

  ProfileDone copyWith({
    required ProfileModel profile,
  }) =>
      ProfileDone(
        profile,
      );

  @override
  List<Object> get props => [profileModel];
}

final class ProfileError extends ProfileState {
  final String message;
  const ProfileError(this.message);
}
