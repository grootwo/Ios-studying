//
//  TrainCars.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/7/24.
//

import SwiftUI

struct TrainCars: View {
    var body: some View {
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

#Preview {
    TrainCars()
}
