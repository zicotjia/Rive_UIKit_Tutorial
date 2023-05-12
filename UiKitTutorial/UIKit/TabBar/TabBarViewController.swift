//
//  TabBar.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 9/5/23.
//

import UIKit
import RiveRuntime
import SwiftUI

class TabBarViewController: UITabBarController {
    
    var riveViewModel = RiveViewModel(fileName: "shapes")

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        UITabBar.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).barTintColor = .systemBackground
        tabBar.tintColor = .label
        
        let riveView = riveViewModel.createRiveView()
        riveView.frame = view.frame
        riveView.backgroundColor = .clear
        riveView.showBlurLoader()
        
        view.insertSubview(riveView, at: 0)
        setupVCs()
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ViewController(),
                                title: NSLocalizedString("Background Animation", comment: ""),
                                image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: UIHostingController(rootView: SpinnerView()),
                                title: NSLocalizedString("Spinner", comment: ""),
                                image: UIImage(systemName: "plus")!),
            createNavController(for: UIHostingController(rootView: StateMachineView()),
                                title: NSLocalizedString("SwiftUI", comment: ""),
                                image: UIImage(systemName: "person")!),
            createNavController(for: UIStateMachineViewController(),
                                title: NSLocalizedString("UIKit", comment: ""),
                                image: UIImage(systemName: "cross")!),
            createNavController(for: UIHostingController(rootView: BallRowView()),
                                title: NSLocalizedString("Ball", comment: ""),
                                image: UIImage(systemName: "circle")!),
        ]
    }

}
