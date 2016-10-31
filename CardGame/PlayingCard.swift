//
//  PlayingCard.swift
//  CardGame
//
//  Created by Gallup, Tyler on 10/25/16.
//  Copyright © 2016 Gallup, Tyler. All rights reserved.
//

import UIKit

class Playing : Card
{
    private var rank : Int
    private var suit : String
    private var color : UIColor
    
    override init()
    {
        suit = ""
        color = UIColor()
        super.init()
        rank = Int()
    }
    
    func getrank() ->Int
    {
        return rank
    }
    func getsuit() ->String
    {
        return suit
    }
    func getcolor() ->UIColor
    {
        return color
    }
    func toString() ->String
    {
        let backStatus :String
        if super.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " isface down"
        }
        
        
        let description = "the card rank is: \(rank) the color is: \(color) and the suit is: \(suit) and \(backStatus)"
        return description
    }
}