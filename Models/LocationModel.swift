//
//  LocationModel.swift
//  MASNScaner
//
//  Created by Brian Young on 7/27/22.
//

import Foundation

class LocationModel: NSObject {
    
    //properties
    // should actually be , conference, timeblock, workshop name
    // need to create key value pairs where it corresponds like this
    // {workshopID = 1 : conference = x, timeblock = y, name = z}
    
    var name: String?
    var address: String?
    var latitude: String?
    var longitude: String?
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(name: String, address: String, latitude: String, longitude: String) {
        
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    
    //prints object's current state
    
//    override var description: String {
        //return "Name: \(name), Address: \(address), Latitude: \(latitude), Longitude: \(longitude)"
        
   // }
    
    
}
