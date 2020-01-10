import 'package:meta/meta.dart';
import 'package:homefit/home/home_state.dart';
import 'package:homefit/workout/workout_state.dart';
import 'package:homefit/user/user_state.dart';

@immutable
class AppState {
  final HomeState homeState;
  final WorkoutState workoutState;
  final UserState userState;
  
  AppState(
    {
      HomeState homeState,
      WorkoutState workoutState,
      UserState userState,
    }
  )
    : homeState = homeState ?? new HomeState(),
      workoutState = workoutState ?? new WorkoutState(),
      userState = userState ?? new UserState();

  AppState copyWith(
      {
        HomeState homeState,
        WorkoutState workoutState,
        UserState userState,
      }) {
    return AppState(
      homeState: homeState ?? this.homeState,
      workoutState: workoutState ?? this.workoutState,
      userState: userState ?? this.userState,
    );
  }
}
