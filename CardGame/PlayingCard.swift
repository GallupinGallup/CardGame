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
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
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
        let description = "the card rank is: \(rank) the color is: \(color) and the suit is: \(suit)"
        return description
    }
}