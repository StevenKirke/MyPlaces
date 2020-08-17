//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Steven Kirke on 17.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import Foundation


struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = ["Piccola Italia", "Da Pino", "Acapella", "Aoduvan",
                           "Apple Bar", "Forbest", "Artiland", "BEERSIDE Gastropub",
                           "Crazy Hunter", "OBEDBUFET", "Kukushka", "I Like Wine",
                           "Mi piace", "PrimaVera", "Happy Bones"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Moskow", type: "Restouran", image: "hamburger"))
        }
        
        return places
    }
    
}
