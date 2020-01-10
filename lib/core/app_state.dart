import 'package:meta/meta.dart';
import 'package:homefit/home/home_state.dart';
import 'package:homefit/workout/workout_state.dart';
import 'package:homefit/user/user_state.dart';

@immutable
class AppState {
  final HomeState homeState;
  final HomeFitWorkoutState homeFitWorkoutState;
  final UserState userState;
  
  AppState(
    {
      HomeState homeState,
      HomeFitWorkoutState homeFitWorkoutState,
      UserState userState,
    }
  )
    : homeState = homeState ?? new HomeState(),
      homeFitWorkoutState = homeFitWorkoutState ?? new HomeFitWorkoutState(),
      userState = userState ?? new UserState();

  AppState copyWith(
      {
        HomeState homeState,
        HomeFitWorkoutState homeFitWorkoutState,
        UserState userState,
      }) {
    return AppState(
      homeState: homeState ?? this.homeState,
      homeFitWorkoutState: homeFitWorkoutState ?? this.homeFitWorkoutState,
      userState: userState ?? this.userState,
    );
  }
}
