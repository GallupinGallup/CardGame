//
//  PlayingCard.swift
//  CardGame
//
//  Created by Gallup, Tyler on 10/25/16.
//  Copyright © 2016 Gallup, Tyler. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    
    override init()
    {
        suit = ""
        color = UIColor()
        rank = Int()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String){
        color = UIColor.redColor()
        suit = ofSuit
        rank = withRank
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
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
    }
    override func toString() ->String
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
    class func validRanks() -> [String]
    {
        return["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♦️","♣️","♥️","♠️"]
    }
}