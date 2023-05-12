//
//  LoginScreenViewController.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 9/5/23.
//

import Foundation
import UIKit

class LoginScreenViewController: UIViewController {
    
    enum State {
        case notLoading
        case loading
    }
    
    var state: State = .notLoading {
        didSet {
            reloadState()
        }
    }
    
    let loadingViewController = RiveAnimationViewController(fileName: "bouncing_loader", animationName: "Timeline 1")
    
    let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "EMAIL"
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "PASSWORD"
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginButtonPressed), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    func reloadState() {
        guard isViewLoaded else {
            return
        }
        
        switch state {
        case .loading:
            view.backgroundColor = .red
            loadingViewController.view.isHidden = false
            view.showBlurLoader()
            view.addSubview(loadingViewController.view)
        case .notLoading:
            view.backgroundColor = .blue
            loadingViewController.view.isHidden = true
            view.removeBlurLoader()
            if view.subviews.contains(loadingViewController.view) {
                //loadingViewController.view.removeFromSuperview()
            }
        }

    }

    @objc func loginButtonPressed(sender: UIButton) {
        state = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.state = .notLoading
            self.navigationController?.pushViewController(TabBarViewController(), animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupLoginContentView()
    }
}
