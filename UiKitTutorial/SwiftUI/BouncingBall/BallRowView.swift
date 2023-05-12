//
//  BallRowViewModel.swift
//  UiKitTutorial
//
//  Created by CE-00021 on 12/5/23.
//

import SwiftUI

struct BallRowView: View {
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<5) {_ in
                BouncingBallView()
            }
        }
    }
}

struct BallRowViewModel_Previews: PreviewProvider {
    static var previews: some View {
        BallRowView()
    }
}
