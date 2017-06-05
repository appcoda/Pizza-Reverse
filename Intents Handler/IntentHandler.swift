//
//  IntentHandler.swift
//  Intents Handler
//
//  Created by Simon Ng on 5/6/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Intents


class IntentHandler: INExtension, INStartWorkoutIntentHandling, INEndWorkoutIntentHandling {
    
    func handle(startWorkout intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
     
        print("Start Workout Intent:", intent)
        
        let userActivity: NSUserActivity? = nil
        guard let spokenPhrase = intent.workoutName?.spokenPhrase else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
            return
        }
        
        completion(INStartWorkoutIntentResponse(code: .continueInApp, userActivity: userActivity))
    }
    
    func handle(endWorkout intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void) {
        
    }
    
}

