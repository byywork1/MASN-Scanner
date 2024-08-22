//
//  Attendee.swift
//  MASNScaner
//
//  Created by Brian Young on 6/27/22.
//

import SwiftUI


class Attendee: Identifiable, Codable {
    var uniqueID = ""
    var workshopID = ""
    var timeStamp = ""
}

@MainActor class Attendees: ObservableObject{
    @Published var people: [Attendee]
    
    init() {
        people = []
    }
}



//extension Attendee{
//    static let previewData = [
//        Attendee(uniqueID: "1", workshopID: "CS-2021-0029-0021", timeStamp: "8:45am"),
//        Attendee(uniqueID: "1", workshopID: "CS-2021-0029-0040", timeStamp: "9:30am"),
//        Attendee(uniqueID: "1", workshopID: "CS-2021-0029-0001", timeStamp: "8:45am"),
//        Attendee(uniqueID: "1", workshopID: "CS-2021-0029-0038", timeStamp: "3:15pm"),
//        Attendee(uniqueID: "1", workshopID: "CS-2021-0029-0024", timeStamp: "3:13pm"),
//        //same attendee scanning into multiple workshops, ^scanning into two at times that are close to each other
//        Attendee(uniqueID: "2", workshopID: "CS-2021-0029-0022", timeStamp: "12:00pm"),
//        Attendee(uniqueID: "2", workshopID: "CS-2021-0029-0013", timeStamp: "3:00pm"),
//        Attendee(uniqueID: "2", workshopID: "CS-2021-0029-0069", timeStamp: "4:00pm"),
//        Attendee(uniqueID: "3", workshopID: "CS-2021-0029-0012", timeStamp: "1:30pm"),
//        Attendee(uniqueID: "3", workshopID: "CS-2021-0029-0019", timeStamp: "1:45pm"),
//        // three different attendees
//    ]
//}
