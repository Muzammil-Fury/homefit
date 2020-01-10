import 'package:redux/redux.dart';
import 'package:homefit/workout/workout_state.dart';
import 'package:homefit/workout/workout_actions.dart';

Reducer<WorkoutState> workoutReducer = combineReducers([
  new TypedReducer<WorkoutState, RecommendedWorkoutListSuccessActionCreator>(_recommendedWorkoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, WorkoutGetSuccessActionCreator>(_workoutGetSuccessActionCreator),
  new TypedReducer<WorkoutState, WorkoutListSuccessActionCreator>(_workoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, WorkoutFavoriteToggleActionCreator>(_workoutFavoriteToggleActionCreator),
  new TypedReducer<WorkoutState, FilterMovementMeterActionCreator>(_filterMovementMeterActionCreator),
  new TypedReducer<WorkoutState, FilterEquipmentActionCreator>(_filterEquipmentActionCreator),
  new TypedReducer<WorkoutState, FilterWorkoutTypeActionCreator>(_filterWorkoutTypeActionCreator),
  new TypedReducer<WorkoutState, FilterWorkoutDurationActionCreator>(_filterWorkoutDurationActionCreator),
  new TypedReducer<WorkoutState, FilterWorkoutFitnessLevelActionCreator>(_filterWorkoutFitnessLevelActionCreator),
  new TypedReducer<WorkoutState, FilterWorkoutSportsActionCreator>(_filterWorkoutSportsActionCreator),
  new TypedReducer<WorkoutState, FilterFavoriteActionCreator>(_filterFavoriteActionCreator),
  new TypedReducer<WorkoutState, MobilityWorkoutListSuccessActionCreator>(_mobilityWorkoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, StrengthWorkoutListSuccessActionCreator>(_strengthWorkoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, MetabolicWorkoutListSuccessActionCreator>(_metabolicWorkoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, PowerWorkoutListSuccessActionCreator>(_powerWorkoutListSuccessActionCreator),
  new TypedReducer<WorkoutState, MobilityResilienceWorkoutListSuccessActionCreator>(
    _mobilityResilienceWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MobilityFluidityWorkoutListSuccessActionCreator>(
    _mobilityFluidityWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MobilityActivationWorkoutListSuccessActionCreator>(
    _mobilityActivationWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MobilityKidsfitWorkoutListSuccessActionCreator>(
    _mobilityKidsfitWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MobilityWorkfitWorkoutListSuccessActionCreator>(
    _mobilityWorkfitWorkoutListSuccessActionCreator
  ),

  new TypedReducer<WorkoutState, StrengthPushPullWorkoutListSuccessActionCreator>(
    _strengthPushPullWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, StrengthLiftingCarryingWorkoutListSuccessActionCreator>(
    _strengthLiftingCarryingWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, StrengthGrand2StandWorkoutListSuccessActionCreator>(
    _strengthGrand2StandWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, StrengthRotationalStrengthWorkoutListSuccessActionCreator>(
    _strengthRotationalStrengthWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, StrengthKidsfitWorkoutListSuccessActionCreator>(
    _strengthKidsfitWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, StrengthWorkfitWorkoutListSuccessActionCreator>(
    _strengthWorkfitWorkoutListSuccessActionCreator
  ),

  new TypedReducer<WorkoutState, MetabolicHiitWorkoutListSuccessActionCreator>(
    _metabolicHiitWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MetabolicHiisWorkoutListSuccessActionCreator>(
    _metabolicHiisWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MetabolicSissWorkoutListSuccessActionCreator>(
    _metabolicSissWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, MetabolicKidsfitWorkoutListSuccessActionCreator>(
    _metabolicKidsfitWorkoutListSuccessActionCreator
  ),

  new TypedReducer<WorkoutState, PowerAccelerationDecelerationWorkoutListSuccessActionCreator>(
    _powerAccelerationDecelerationWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, PowerSpeedReactionWorkoutListSuccessActionCreator>(
    _powerSpeedReactionWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, PowerMaxPowerWorkoutListSuccessActionCreator>(
    _powerMaxPowerWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, PowerPylometricsWorkoutListSuccessActionCreator>(
    _powerPylometricsWorkoutListSuccessActionCreator
  ),
  new TypedReducer<WorkoutState, PowerKidsfitWorkoutListSuccessActionCreator>(
    _powerKidsfitWorkoutListSuccessActionCreator
  ),
]);

WorkoutState _getCopy(WorkoutState state) {
  return new WorkoutState().copyWith(
    recommendedWorkouts: state.recommendedWorkouts,    
    workouts: state.workouts,
    workout: state.workout,
    isFavoriteWorkout: state.isFavoriteWorkout,
    paginateInfo: state.paginateInfo,
    favoriteList: state.favoriteList,
    isValidHomeFitSubscription: state.isValidHomeFitSubscription,
    movementMeterFilter: state.movementMeterFilter,
    equipmentBodyweight: state.equipmentBodyweight,
    equipmentDumbbell: state.equipmentDumbbell,
    equipmentKettlebell: state.equipmentKettlebell,
    equipmentPowerPlate: state.equipmentPowerPlate,
    equipmentFoamRoller: state.equipmentFoamRoller,
    equipmentBands: state.equipmentBands,
    equipmentBosu: state.equipmentBosu,
    equipmentRockblade: state.equipmentRockblade,
    workoutType: state.workoutType,
    workoutDuration: state.workoutDuration,
    workoutFitnessLevel: state.workoutFitnessLevel,
    workoutSports: state.workoutSports,
    favoriteEnabled: state.favoriteEnabled,
    mobilityWorkouts: state.mobilityWorkouts,
    mobilityWorkoutsPaginateInfo: state.mobilityWorkoutsPaginateInfo,
    strengthWorkouts: state.strengthWorkouts,
    strengthWorkoutsPaginateInfo: state.strengthWorkoutsPaginateInfo,
    metabolicWorkouts: state.metabolicWorkouts,
    metabolicWorkoutsPaginateInfo: state.metabolicWorkoutsPaginateInfo,
    powerWorkouts: state.powerWorkouts,
    powerWorkoutsPaginateInfo: state.powerWorkoutsPaginateInfo,
    mobilityResilienceWorkouts: state.mobilityResilienceWorkouts,
    mobilityResiliencePaginateInfo: state.mobilityResiliencePaginateInfo,
    mobilityFluidityWorkouts: state.mobilityFluidityWorkouts,
    mobilityFluidityPaginateInfo: state.mobilityFluidityPaginateInfo,
    mobilityActivationWorkouts: state.mobilityActivationWorkouts,
    mobilityActivationPaginateInfo: state.mobilityActivationPaginateInfo,
    mobilityKidsFitWorkouts: state.mobilityKidsFitWorkouts,
    mobilityKidsFitPaginateInfo: state.mobilityKidsFitPaginateInfo,
    mobilityWorkFitWorkouts: state.mobilityWorkFitWorkouts,
    mobilityWorkFitPaginateInfo: state.mobilityWorkFitPaginateInfo,
    strengthPushPullWorkouts: state.strengthPushPullWorkouts,
    strengthPushPullPaginateInfo: state.strengthPushPullPaginateInfo,

    strengthLiftingCarryingWorkouts: state.strengthLiftingCarryingWorkouts,
    strengthLiftingCarryingPaginateInfo: state.strengthLiftingCarryingPaginateInfo,

    strengthGrand2StandWorkouts: state.strengthGrand2StandWorkouts,
    strengthGrand2StandPaginateInfo: state.strengthGrand2StandPaginateInfo,

    strengthRotationalStrengthWorkouts: state.strengthRotationalStrengthWorkouts,
    strengthRotationalStrengthPaginateInfo: state.strengthRotationalStrengthPaginateInfo,

    strengthKidsFitWorkouts: state.strengthKidsFitWorkouts,
    strengthKidsFitPaginateInfo: state.strengthKidsFitPaginateInfo,

    strengthWorkFitWorkouts: state.strengthWorkFitWorkouts,
    strengthWorkFitPaginateInfo: state.strengthWorkFitPaginateInfo,

    metabolicHIITWorkouts: state.metabolicHIITWorkouts,
    metabolicHIITPaginateInfo: state.metabolicHIITPaginateInfo,

    metabolicHIISWorkouts: state.metabolicHIISWorkouts,
    metabolicHIISPaginateInfo: state.metabolicHIISPaginateInfo,

    metabolicSISSWorkouts: state.metabolicSISSWorkouts,
    metabolicSISSPaginateInfo: state.metabolicSISSPaginateInfo,

    metabolicKidsFitWorkouts: state.metabolicKidsFitWorkouts,
    metabolicKidsFitPaginateInfo: state.metabolicKidsFitPaginateInfo,

    powerAccelerationDecelerationWorkouts: state.powerAccelerationDecelerationWorkouts,
    powerAccelerationDecelerationPaginateInfo: state.powerAccelerationDecelerationPaginateInfo,

    powerSpeedReactionWorkouts: state.powerSpeedReactionWorkouts,
    powerSpeedReactionPaginateInfo: state.powerSpeedReactionPaginateInfo,

    powerMaxPowerWorkouts: state.powerMaxPowerWorkouts,
    powerMaxPowerPaginateInfo: state.powerMaxPowerPaginateInfo,

    powerPlyometricsWorkouts: state.powerPlyometricsWorkouts,
    powerPlyometricsPaginateInfo: state.powerPlyometricsPaginateInfo,

    powerKidsFitWorkouts: state.powerKidsFitWorkouts,
    powerKidsFitPaginateInfo: state.powerKidsFitPaginateInfo,    
  );
}

WorkoutState _workoutListSuccessActionCreator(WorkoutState state, WorkoutListSuccessActionCreator action) {  
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      workouts: action.workouts,
      paginateInfo: action.paginateInfo,      
      favoriteList: action.favoriteList,
      isValidHomeFitSubscription: action.isValidHomeFitSubscription
    );  
  } else {
    return _getCopy(state).copyWith(
      workouts: []..addAll(state.workouts)..addAll(action.workouts),
      paginateInfo: action.paginateInfo,      
      favoriteList: action.favoriteList,
      isValidHomeFitSubscription: action.isValidHomeFitSubscription
    );  
  }
}

WorkoutState _recommendedWorkoutListSuccessActionCreator(WorkoutState state, RecommendedWorkoutListSuccessActionCreator action) {
  return _getCopy(state).copyWith(
    recommendedWorkouts: action.recommendedWorkouts
  );
}

WorkoutState _workoutGetSuccessActionCreator(WorkoutState state, WorkoutGetSuccessActionCreator action) {
  return _getCopy(state).copyWith(
    workout: action.workout,
    isFavoriteWorkout: action.isFavorite
  );
}

WorkoutState _workoutFavoriteToggleActionCreator(WorkoutState state, WorkoutFavoriteToggleActionCreator action) {
  return _getCopy(state).copyWith(
    isFavoriteWorkout: action.isFavorite
  );
}

WorkoutState _filterMovementMeterActionCreator(WorkoutState state, FilterMovementMeterActionCreator action) {
  return _getCopy(state).copyWith(
    movementMeterFilter: action.movementMeterFilter
  );
}

WorkoutState _filterEquipmentActionCreator(WorkoutState state, FilterEquipmentActionCreator action) {
  
  if(action.toggleEquipment == "bodyweight") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentBodyweight: !state.equipmentBodyweight
    );
    return newState;
  } else if(action.toggleEquipment == "dumbbell") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentDumbbell: !state.equipmentDumbbell
    );
    return newState;
  } else if(action.toggleEquipment == "kettlebell") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentKettlebell: !state.equipmentKettlebell
    );
    return newState;
  } else if(action.toggleEquipment == "powerplate") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentPowerPlate: !state.equipmentPowerPlate
    );
    return newState;
  } else if(action.toggleEquipment == "foamroller") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentFoamRoller: !state.equipmentFoamRoller
    );
    return newState;
  } else if(action.toggleEquipment == "band") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentBands: !state.equipmentBands
    );
    return newState;    
  } else if(action.toggleEquipment == "bosu") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentBosu: !state.equipmentBosu
    );
    return newState;    
  } else if(action.toggleEquipment == "rockblade") {
    WorkoutState newState = _getCopy(state).copyWith(
      equipmentRockblade: !state.equipmentRockblade
    );
    return newState;    
  }
}

WorkoutState _filterWorkoutTypeActionCreator(WorkoutState state, FilterWorkoutTypeActionCreator action) {
  return _getCopy(state).copyWith(
    workoutType: action.workoutType
  );
}

WorkoutState _filterWorkoutDurationActionCreator(WorkoutState state, FilterWorkoutDurationActionCreator action) {
  return _getCopy(state).copyWith(
    workoutDuration: action.workoutDuration
  );
}

WorkoutState _filterWorkoutFitnessLevelActionCreator(WorkoutState state, FilterWorkoutFitnessLevelActionCreator action) {
  WorkoutState newState =  _getCopy(state).copyWith(
    workoutFitnessLevel: action.workoutFitnessLevel
  );
  return newState;
}


WorkoutState _filterWorkoutSportsActionCreator(WorkoutState state, FilterWorkoutSportsActionCreator action) {
  WorkoutState newState =  _getCopy(state).copyWith(
    workoutSports: action.workoutSports
  );
  return newState;
}


WorkoutState _filterFavoriteActionCreator(WorkoutState state, FilterFavoriteActionCreator action) {
  WorkoutState newState =  _getCopy(state).copyWith(
    favoriteEnabled: action.favoriteEnabled
  );
  return newState;
}



WorkoutState _mobilityWorkoutListSuccessActionCreator(WorkoutState state, MobilityWorkoutListSuccessActionCreator action) {  
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityWorkouts: action.workouts,
      mobilityWorkoutsPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityWorkouts: []..addAll(state.mobilityWorkouts)..addAll(action.workouts),
      mobilityWorkoutsPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _strengthWorkoutListSuccessActionCreator(WorkoutState state, StrengthWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthWorkouts: action.workouts,
      strengthWorkoutsPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthWorkouts: []..addAll(state.strengthWorkouts)..addAll(action.workouts),
      strengthWorkoutsPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _metabolicWorkoutListSuccessActionCreator(WorkoutState state, MetabolicWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      metabolicWorkouts: action.workouts,
      metabolicWorkoutsPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      metabolicWorkouts: []..addAll(state.metabolicWorkouts)..addAll(action.workouts),
      metabolicWorkoutsPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _powerWorkoutListSuccessActionCreator(WorkoutState state, PowerWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerWorkouts: action.workouts,
      powerWorkoutsPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerWorkouts: []..addAll(state.powerWorkouts)..addAll(action.workouts),
      powerWorkoutsPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _mobilityResilienceWorkoutListSuccessActionCreator(WorkoutState state, MobilityResilienceWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityResilienceWorkouts: action.workouts,
      mobilityResiliencePaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityResilienceWorkouts: []..addAll(state.mobilityResilienceWorkouts)..addAll(action.workouts),
      mobilityResiliencePaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _mobilityFluidityWorkoutListSuccessActionCreator(WorkoutState state, MobilityFluidityWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityFluidityWorkouts: action.workouts,
      mobilityFluidityPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityFluidityWorkouts: []..addAll(state.mobilityFluidityWorkouts)..addAll(action.workouts),
      mobilityFluidityPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _mobilityActivationWorkoutListSuccessActionCreator(WorkoutState state, MobilityActivationWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityActivationWorkouts: action.workouts,
      mobilityActivationPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityActivationWorkouts: []..addAll(state.mobilityActivationWorkouts)..addAll(action.workouts),
      mobilityActivationPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _mobilityKidsfitWorkoutListSuccessActionCreator(WorkoutState state, MobilityKidsfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityKidsFitWorkouts: action.workouts,
      mobilityKidsFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityKidsFitWorkouts: []..addAll(state.mobilityKidsFitWorkouts)..addAll(action.workouts),
      mobilityKidsFitPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _mobilityWorkfitWorkoutListSuccessActionCreator(WorkoutState state, MobilityWorkfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      mobilityWorkFitWorkouts: action.workouts,
      mobilityWorkFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      mobilityWorkFitWorkouts: []..addAll(state.mobilityWorkFitWorkouts)..addAll(action.workouts),
      mobilityWorkFitPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _strengthPushPullWorkoutListSuccessActionCreator(WorkoutState state, StrengthPushPullWorkoutListSuccessActionCreator action) {  
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthPushPullWorkouts: action.workouts,
      strengthPushPullPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthPushPullWorkouts: []..addAll(state.strengthPushPullWorkouts)..addAll(action.workouts),
      strengthPushPullPaginateInfo: action.paginateInfo,            
    );  
  }
}

WorkoutState _strengthLiftingCarryingWorkoutListSuccessActionCreator(WorkoutState state, StrengthLiftingCarryingWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthLiftingCarryingWorkouts: action.workouts,
      strengthLiftingCarryingPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthLiftingCarryingWorkouts: []..addAll(state.strengthLiftingCarryingWorkouts)..addAll(action.workouts),
      strengthLiftingCarryingPaginateInfo: action.paginateInfo,            
    );  
  }  
}

WorkoutState _strengthGrand2StandWorkoutListSuccessActionCreator(WorkoutState state, StrengthGrand2StandWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthGrand2StandWorkouts: action.workouts,
      strengthGrand2StandPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthGrand2StandWorkouts: []..addAll(state.strengthGrand2StandWorkouts)..addAll(action.workouts),
      strengthGrand2StandPaginateInfo: action.paginateInfo,            
    );  
  }  
}
  
WorkoutState _strengthRotationalStrengthWorkoutListSuccessActionCreator(WorkoutState state, StrengthRotationalStrengthWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthRotationalStrengthWorkouts: action.workouts,
      strengthRotationalStrengthPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthRotationalStrengthWorkouts: []..addAll(state.strengthRotationalStrengthWorkouts)..addAll(action.workouts),
      strengthRotationalStrengthPaginateInfo: action.paginateInfo,            
    );  
  }  
}

WorkoutState _strengthKidsfitWorkoutListSuccessActionCreator(WorkoutState state, StrengthKidsfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthKidsFitWorkouts: action.workouts,
      strengthKidsFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthKidsFitWorkouts: []..addAll(state.strengthKidsFitWorkouts)..addAll(action.workouts),
      strengthKidsFitPaginateInfo: action.paginateInfo,            
    );  
  }    
}

WorkoutState _strengthWorkfitWorkoutListSuccessActionCreator(WorkoutState state, StrengthWorkfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      strengthWorkFitWorkouts: action.workouts,
      strengthWorkFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      strengthWorkFitWorkouts: []..addAll(state.strengthWorkFitWorkouts)..addAll(action.workouts),
      strengthWorkFitPaginateInfo: action.paginateInfo,            
    );  
  }    
}


WorkoutState _metabolicHiitWorkoutListSuccessActionCreator(WorkoutState state, MetabolicHiitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      metabolicHIITWorkouts: action.workouts,
      metabolicHIITPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      metabolicHIITWorkouts: []..addAll(state.metabolicHIITWorkouts)..addAll(action.workouts),
      metabolicHIITPaginateInfo: action.paginateInfo,            
    );  
  }    
}

WorkoutState _metabolicHiisWorkoutListSuccessActionCreator(WorkoutState state, MetabolicHiisWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      metabolicHIISWorkouts: action.workouts,
      metabolicHIISPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      metabolicHIISWorkouts: []..addAll(state.metabolicHIISWorkouts)..addAll(action.workouts),
      metabolicHIISPaginateInfo: action.paginateInfo,            
    );  
  }    
}

WorkoutState _metabolicSissWorkoutListSuccessActionCreator(WorkoutState state, MetabolicSissWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      metabolicSISSWorkouts: action.workouts,
      metabolicSISSPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      metabolicSISSWorkouts: []..addAll(state.metabolicSISSWorkouts)..addAll(action.workouts),
      metabolicSISSPaginateInfo: action.paginateInfo,            
    );  
  }    
}

WorkoutState _metabolicKidsfitWorkoutListSuccessActionCreator(WorkoutState state, MetabolicKidsfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      metabolicKidsFitWorkouts: action.workouts,
      metabolicKidsFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      metabolicKidsFitWorkouts: []..addAll(state.metabolicKidsFitWorkouts)..addAll(action.workouts),
      metabolicKidsFitPaginateInfo: action.paginateInfo,            
    );  
  }      
}

WorkoutState _powerAccelerationDecelerationWorkoutListSuccessActionCreator(WorkoutState state, PowerAccelerationDecelerationWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerAccelerationDecelerationWorkouts: action.workouts,
      powerAccelerationDecelerationPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerAccelerationDecelerationWorkouts: []..addAll(state.powerAccelerationDecelerationWorkouts)..addAll(action.workouts),
      powerAccelerationDecelerationPaginateInfo: action.paginateInfo,            
    );  
  }        
}

WorkoutState _powerSpeedReactionWorkoutListSuccessActionCreator(WorkoutState state, PowerSpeedReactionWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerSpeedReactionWorkouts: action.workouts,
      powerSpeedReactionPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerSpeedReactionWorkouts: []..addAll(state.powerSpeedReactionWorkouts)..addAll(action.workouts),
      powerSpeedReactionPaginateInfo: action.paginateInfo,            
    );  
  }        
}

WorkoutState _powerMaxPowerWorkoutListSuccessActionCreator(WorkoutState state, PowerMaxPowerWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerMaxPowerWorkouts: action.workouts,
      powerMaxPowerPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerMaxPowerWorkouts: []..addAll(state.powerMaxPowerWorkouts)..addAll(action.workouts),
      powerMaxPowerPaginateInfo: action.paginateInfo,            
    );  
  }        
}

WorkoutState _powerPylometricsWorkoutListSuccessActionCreator(WorkoutState state, PowerPylometricsWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerPlyometricsWorkouts: action.workouts,
      powerPlyometricsPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerPlyometricsWorkouts: []..addAll(state.powerPlyometricsWorkouts)..addAll(action.workouts),
      powerPlyometricsPaginateInfo: action.paginateInfo,            
    );  
  }        
}

WorkoutState _powerKidsfitWorkoutListSuccessActionCreator(WorkoutState state, PowerKidsfitWorkoutListSuccessActionCreator action) {
  if(action.paginateInfo["page"] == 0) {
    return _getCopy(state).copyWith(
      powerKidsFitWorkouts: action.workouts,
      powerKidsFitPaginateInfo: action.paginateInfo,
    );  
  } else {
    return _getCopy(state).copyWith(
      powerKidsFitWorkouts: []..addAll(state.powerKidsFitWorkouts)..addAll(action.workouts),
      powerKidsFitPaginateInfo: action.paginateInfo,            
    );  
  }          
}
