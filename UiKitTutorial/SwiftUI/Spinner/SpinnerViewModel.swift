//
//  SpinnerViewModel.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import Foundation
import RiveRuntime
import SwiftUI

class SpinnerViewModel: ObservableObject {
    
    let riveViewModel = RiveViewModel(fileName: "spinner", autoPlay: false)
    
    var view: AnyView {
        riveViewModel.view()
    }
    
    func handleClick() {
        riveViewModel.play(animationName: "Timeline 1")
    }
}
