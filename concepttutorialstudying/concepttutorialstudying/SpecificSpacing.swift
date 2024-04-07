//
//  SpecificSpacing.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/7/24.
//

import SwiftUI


struct SpecificSpacing: View {
    var body: some View {
            Text("Specific Spacing")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack(spacing: 50) {
                TrainCar(.rear)
                TrainCar(.middle)
                TrainCar(.front)
            }
            TrainTrack()
        }
}


struct SpecificSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SpecificSpacing()
        }
    }
}
