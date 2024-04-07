//
//  PaddingSomeEdges.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/7/24.
//

import SwiftUI


struct PaddingSomeEdges: View {
    var body: some View {
        Text("Padding Some Edges")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .padding([.leading])
                .background(.green).opacity(0.5)
            TrainCar(.front)
        }
        TrainTrack()
    }
}


struct PaddingSomeEdges_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PaddingSomeEdges()
        }
    }
}
