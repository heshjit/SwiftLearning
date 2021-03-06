//
//  Meal.swift
//  FoodTracker
//
//  Created by Jithesh V K on 9/10/2015.
//  Copyright © 2015 Jithesh V K. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int){
        self.name=name
        self.photo=photo
        self.rating=rating
        
        if name.isEmpty || rating<0{
            return nil
        }
    }
}
