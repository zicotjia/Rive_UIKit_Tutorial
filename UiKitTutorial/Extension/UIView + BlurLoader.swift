//
//  UIView + BlurLoa.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import UIKit

extension UIView {
    
    func showBlurLoader() {
        let blurLoader = BlurLoader(frame: frame)
        self.addSubview(blurLoader)
    }

    func removeBlurLoader() {
        if let blurLoader = subviews.first(where: { $0 is BlurLoader }) {
            blurLoader.removeFromSuperview()
        }
    }
}

