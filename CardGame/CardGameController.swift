//
//  CardGameController.swift
//  CardGame
//
//  Created by Gallup, Tyler on 10/27/16.
//  Copyright © 2016 Gallup, Tyler. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    private lazy var clickCount = Int()
    private lazy var handCount = Int()
    private lazy var cardDeck = PlayingCardDeck()

    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
       let tempCard = Card()
        print(tempCard.toString())
    }
    
    @IBAction func cardClicker(sender: UIButton)
    {
        handCount += 1
        
        if clickCount < 52
        {
            clickCount += 1
        }
        
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())",forState:
            UIControlState.Normal)
        }
        else if handCount == 53
        {
            cardButton.setTitle("Deck over", forState: UIControlState.Normal)
        }
        else if handCount == 54
        {
            cardButton.setTitle("Restart", forState: UIControlState.Normal)
        }
        else
        {
            cardDeck = PlayingCardDeck()
            handCount = 0
            clickCount = 0
        }
        let content = "You have drawn \(clickCount) cards"
        cardLabel.text = content
    }
}
