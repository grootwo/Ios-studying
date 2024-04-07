//
//  ScaledSpacing.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/7/24.
//

import SwiftUI


struct ScaledSpacing: View {
    @ScaledMetric var trainCarSpace = 30
    
    var body: some View {
        Text("Scaled Spacing")
        HStack(spacing:trainCarSpace) {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}


struct ScaledSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ScaledSpacing()
        }
    }
}
