//
//  StateViewMODEL.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import Foundation
import RiveRuntime
import SwiftUI

class StateMachineViewModel: ObservableObject {
    
    let riveViewModel = RiveViewModel(fileName: "states", stateMachineName: "State Machine 1")
    let states = ["short", "medium", "long"]
    var index = 0;
    
    var view: AnyView {
        riveViewModel.autoPlay = true
        return riveViewModel.view()
    }
    
    func nextState() {
        guard !riveViewModel.isPlaying else {
            return
        }
        let state = states[index]
        riveViewModel.triggerInput(state)
        index = (index + 1) % 3
    }
}
