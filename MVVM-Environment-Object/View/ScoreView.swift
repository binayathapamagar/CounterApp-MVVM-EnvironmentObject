//
//  ScoreView.swift
//  MVVM-Environment-Object
//
//  Created by Binaya on 02/10/2021.
//

import SwiftUI

struct ScoreView: View {
    
    @EnvironmentObject var scoreVM: ScoreViewModel
    
    var body: some View {
        Text("Score: \(scoreVM.scoreValue)")
            .font(.system(size: 80))
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView().environmentObject(ScoreViewModel())
    }
}
