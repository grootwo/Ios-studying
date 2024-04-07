//
//  DefaultPadding.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/7/24.
//

import SwiftUI


struct DefaultPadding: View {
    var body: some View {
        Text("Default Padding")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        .padding()
        .background(.green).opacity(0.5)
        TrainTrack()
    }
}


struct DefaultPadding_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultPadding()
        }
    }
}
