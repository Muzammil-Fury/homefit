import 'package:redux/redux.dart';
import 'package:homefit/home/home_state.dart';
import 'package:homefit/home/home_actions.dart';

Reducer<HomeState> homeReducer = combineReducers([
  new TypedReducer<HomeState, VerifyEmailSuccessActionCreator>(_verifyEmailSuccessActionCreator),
  new TypedReducer<HomeState, ClearVerifyEmailActionCreator>(_clearVerifyEmailActionCreator),
  new TypedReducer<HomeState, DashboardDetailsSuccessActionCreator>(_dashboardDetailsSuccessActionCreator),
  new TypedReducer<HomeState, DashboardDetailsMovementMeterSuccessActionCreator>(_dashboardDetailsMovementMeterSuccessActionCreator),  
  new TypedReducer<HomeState, VerifyUserActionCreator>(_verifyUserActionCreator),
  new TypedReducer<HomeState, FamilyPlanMemberListSuccessActionCreator>(_familyPlanMemberListActionCreator),
  new TypedReducer<HomeState, UpdateUserMovementMeterSettingsActionCreator>(_updateUserMovementMeterSettingsActionCreator),
  new TypedReducer<HomeState, DashboardNewWorkoutsSuccess>(_dashboardNewWorkoutsSuccess),
  new TypedReducer<HomeState, DashboardFavoriteWorkoutsSuccess>(_dashboardFavoriteWorkoutsSuccess),
  new TypedReducer<HomeState, HomeCleanup>(_homeCleanup),
]);

HomeState _getCopy(HomeState state) {
  return new HomeState().copyWith(    
    welcomeVideoId: state.welcomeVideoId,
    welcomeVideoURL: state.welcomeVideoURL,
    welcomeVideoThumbnailURL: state.welcomeVideoThumbnailURL,
    user: state.user,
    currentWeekMovementPoints: state.currentWeekMovementPoints,
    familyPlanMemberList: state.familyPlanMemberList,
    movementMeterConfiguration: state.movementMeterConfiguration,
    availableSports: state.availableSports,
    userEmailExists: state.userEmailExists,
    plans: state.plans,
    newWorkouts: state.newWorkouts,
    favoriteWorkouts: state.favoriteWorkouts,
    favoriteWorkoutsPaginateInfo: state.favoriteWorkoutsPaginateInfo,
  );
}



HomeState _clearVerifyEmailActionCreator(HomeState state, ClearVerifyEmailActionCreator action) {  
  return _getCopy(state).copyWith(
    userEmailExists: -1
  );
}

HomeState _verifyEmailSuccessActionCreator(HomeState state, VerifyEmailSuccessActionCreator action) {  
  return _getCopy(state).copyWith(
    userEmailExists: action.emailExists
  );
}


HomeState _dashboardDetailsSuccessActionCreator(HomeState state, DashboardDetailsSuccessActionCreator action) {
  List<Map> _availableSports = action.availableSports;
  Map<String, dynamic> emptySports = new Map<String, dynamic>();
  emptySports["id"] = "0";
  emptySports["name"] = "";   
  _availableSports.insert(0, emptySports);
  return _getCopy(state).copyWith(
    welcomeVideoId: action.welcomeVideoId,
    welcomeVideoURL: action.welcomeVideoURL,
    welcomeVideoThumbnailURL: action.welcomeVideoThumbnailURL,
    availableSports: _availableSports,
  );
}

HomeState _dashboardDetailsMovementMeterSuccessActionCreator(HomeState state, DashboardDetailsMovementMeterSuccessActionCreator action) {
  return _getCopy(state).copyWith(
    currentWeekMovementPoints: action.currentWeekMovementMeter
  );
}

HomeState _verifyUserActionCreator(HomeState state, VerifyUserActionCreator action) {
  return _getCopy(state).copyWith(
    user: action.user,
    movementMeterConfiguration: action.user["movement_meter_configuration"],
    plans: action.plans,
  );
}

HomeState _familyPlanMemberListActionCreator(HomeState state, FamilyPlanMemberListSuccessActionCreator action) {
  return _getCopy(state).copyWith(
    familyPlanMemberList: action.familyPlanMemberList
  );
}

HomeState _updateUserMovementMeterSettingsActionCreator(HomeState state, UpdateUserMovementMeterSettingsActionCreator action) {
  return _getCopy(state).copyWith(
    movementMeterConfiguration: action.movementMeterConfiguration
  );
}

HomeState _dashboardNewWorkoutsSuccess(HomeState state, DashboardNewWorkoutsSuccess action) {
  return _getCopy(state).copyWith(
    newWorkouts: action.newWorkouts
  );
}

HomeState _dashboardFavoriteWorkoutsSuccess(HomeState state, DashboardFavoriteWorkoutsSuccess action) {
  return _getCopy(state).copyWith(
    favoriteWorkouts: action.favoriteWorkouts,
    favoriteWorkoutsPaginateInfo: action.favoriteWorkoutsPaginateInfo,
  );
}


HomeState _homeCleanup(HomeState state, HomeCleanup action) {
  return _getCopy(state).copyWith(
    welcomeVideoId: null,
    welcomeVideoURL: null,
    welcomeVideoThumbnailURL: null,
    user: null,
    currentWeekMovementPoints: null,
    familyPlanMemberList: null,
    movementMeterConfiguration: null
  );
}