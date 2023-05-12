//
//  Spinner.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 11/5/23.
//

import SwiftUI
import RiveRuntime

struct SpinnerView: View {
    
    let viewModel = SpinnerViewModel()
    
    var body: some View {
        VStack {
            viewModel.riveViewModel.view()
                .frame(width: 300, height: 300)
                .onTapGesture {
                    viewModel.handleClick()
                }
        }
    }
}

struct Spinner_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerView()
    }
}
