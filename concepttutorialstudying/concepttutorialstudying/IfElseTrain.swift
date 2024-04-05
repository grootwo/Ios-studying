//
//  IfElseTrain.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/5/24.
//

import SwiftUI

struct IfElseTrain: View {
    var longerTrain: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "train.side.rear.car")
                .resizable()
                .scaledToFit()
            if longerTrain {
                Image(systemName: "train.side.middle.car")
                    .resizable()
                    .scaledToFit()
            }
            Image(systemName: "train.side.front.car")
                .resizable()
                .scaledToFit()
        }
        
    }
}

#Preview {
    IfElseTrain(longerTrain: true)
}
