//
//  UIView + ClickListener.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import UIKit

class ClickListener: UITapGestureRecognizer {
    var onClick: (() -> Void)? = nil
}

extension UIView {
    
    func setOnClickListener(action: @escaping () -> Void) {
        let tapRecogniser = ClickListener(target: self, action: #selector(onViewClicked(sender: )))
        tapRecogniser.onClick = action
        self.addGestureRecognizer(tapRecogniser)
    }
    
    @objc func onViewClicked(sender: ClickListener) {
        if let onClick = sender.onClick {
            onClick()
        }
    }
}
