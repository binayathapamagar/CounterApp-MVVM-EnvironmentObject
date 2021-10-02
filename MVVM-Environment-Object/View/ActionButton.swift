//
//  ActionButton.swift
//  MVVM-Environment-Object
//
//  Created by Binaya on 02/10/2021.
//

import SwiftUI

struct ActionButton: View {
    var buttonImageName: String
    var function: () -> Void
    
    var body: some View {
        Button(action: function) {
            Image(systemName: buttonImageName)
                .resizable()
        }
        .frame(width: 20, height: 20)
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(buttonImageName: "minus.circle", function: {})
            .previewLayout(.sizeThatFits)
    }
}
