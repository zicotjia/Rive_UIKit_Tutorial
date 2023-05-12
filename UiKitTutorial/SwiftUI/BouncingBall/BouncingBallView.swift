//
//  BouncingBallView.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 12/5/23.
//

import SwiftUI

struct BouncingBallView: View {
    
    let viewModel = BouncingBallViewModel()
    
    var body: some View {
        viewModel.view
            .frame(width: 75, height: 200)
            .onTapGesture {
                viewModel.handleClick()
            }
    }
}

struct BouncingBallView_Previews: PreviewProvider {
    static var previews: some View {
        BouncingBallView()
    }
}
