//
//  BouncingBallViewModel.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 12/5/23.
//

import SwiftUI
import RiveRuntime

class BouncingBallViewModel {
    
    let riveViewModel = RiveViewModel(fileName: "bouncing_ball", autoPlay: false)
    
    var view: AnyView {
        riveViewModel.view()
    }
    
    func handleClick() {
        riveViewModel.play(animationName: "Timeline 1")
    }
}
