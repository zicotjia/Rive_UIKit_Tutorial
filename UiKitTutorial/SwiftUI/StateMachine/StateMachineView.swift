//
//  States.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import SwiftUI

struct StateMachineView: View {

    let viewModel = StateMachineViewModel()
    
    var body: some View {
        HStack {
            Spacer()
            viewModel.view
                .onTapGesture {
                    viewModel.nextState()
                }
            Spacer()
        }

    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        StateMachineView()
    }
}
