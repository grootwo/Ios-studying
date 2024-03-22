import SwiftUI

struct Mission: Codable, Hashable, Identifiable {
    var id: Int
    var titleImageName: String
    var userImageName: String
    var correctImageName: String
    var wrongImageName: String
    var missionTitle: String
    var location: String
    var missionInfo: String
}
