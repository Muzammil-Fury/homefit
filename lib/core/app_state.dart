import 'package:meta/meta.dart';
import 'package:homefit/home/home_state.dart';
import 'package:homefit/workout/workout_state.dart';
import 'package:homefit/user/user_state.dart';

@immutable
class AppState {
  final HomeFitHomeState homeFitHomeState;
  final WorkoutState workoutState;
  final UserState userState;
  
  AppState(
    {
      HomeFitHomeState homeFitHomeState,
      WorkoutState workoutState,
      UserState userState,
    }
  )
    : homeFitHomeState = homeFitHomeState ?? new HomeFitHomeState(),
      workoutState = workoutState ?? new WorkoutState(),
      userState = userState ?? new UserState();

  AppState copyWith(
      {
        HomeFitHomeState homeFitHomeState,
        WorkoutState workoutState,
        UserState userState,
      }) {
    return AppState(
      homeFitHomeState: homeFitHomeState ?? this.homeFitHomeState,
      workoutState: workoutState ?? this.workoutState,
      userState: userState ?? this.userState,
    );
  }
}
