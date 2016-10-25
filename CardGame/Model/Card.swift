//
//  Card.swift
//  CardGame
//
//  Created by Gallup, Tyler on 10/25/16.
//  Copyright © 2016 Gallup, Tyler. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    private var isFaceUp : Bool
    
    init ()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func toSrting() -> String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
    }
}
