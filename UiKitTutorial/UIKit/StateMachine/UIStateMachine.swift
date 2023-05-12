//
//  UIStateMachine.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import UIKit

class UIStateMachineViewController: UIViewController {
    
    let viewModel = StateMachineViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let riveView = viewModel.riveViewModel.createRiveView()
        view.addSubview(riveView)
        view.setOnClickListener {
            self.viewModel.nextState()
        }
        riveView.translatesAutoresizingMaskIntoConstraints = false
        riveView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        riveView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        riveView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        riveView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
}
