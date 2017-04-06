//
//  Meal.swift
//  FoodTracker
//
//  Created by Andy Pagdin on 06/04/2017.
//  Copyright © 2017 Andy Pagdin. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initalisation
    init?(name: String, photo: UIImage?, rating: Int){
        
        // Initalisation should fail if there is no name or if the rating is negative
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
