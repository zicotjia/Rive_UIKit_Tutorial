//
//  RiveAnimationViewController.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import UIKit
import RiveRuntime

// Attempt to make a RiveViewController
class RiveAnimationViewController: UIViewController {
    
    @IBOutlet weak var riveView: RiveView!
    
    let riveViewModel: RiveViewModel?
    
    init(fileName: String, animationName: String) {
        riveViewModel = RiveViewModel(fileName: fileName, animationName: animationName)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        riveViewModel = nil
        super.init(coder: coder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let riveView = riveViewModel?.createRiveView() else {
            return
        }
        view.addSubview(riveView)
        riveView.frame = view.frame
        riveViewModel?.reset()
    }
    
    func startAnimation() {
        riveViewModel?.play()
    }
    
    func stopAnimation() {
        riveViewModel?.stop()
    }
}

