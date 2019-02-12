//
//  deck.swift
//  Beehive Solitare
//
//  Created by Baxter Coronado on 2/15/18.
//  Copyright © 2018 bbbax. All rights reserved.
//

import Foundation

class Deck
{
    let newDeck = ["2_of_clubs", "2_of_diamonds", "2_of_hearts", "2_of_spades", "3_of_clubs", "3_of_diamonds", "3_of_hearts", "3_of_spades", "4_of_clubs", "4_of_diamonds", "4_of_hearts", "4_of_spades", "5_of_clubs", "5_of_diamonds", "5_of_hearts", "5_of_spades","6_of_clubs", "6_of_diamonds", "6_of_hearts", "6_of_spades","7_of_clubs", "7_of_diamonds", "7_of_hearts", "7_of_spades","8_of_clubs", "8_of_diamonds", "8_of_hearts", "8_of_spades","9_of_clubs", "9_of_diamonds", "9_of_hearts", "9_of_spades","10_of_clubs", "10_of_diamonds", "10_of_hearts", "10_of_spades","ace_of_clubs", "ace_of_diamonds", "ace_of_hearts", "ace_of_spades","jack_of_clubs", "jack_of_diamonds", "jack_of_hearts", "jack_of_spades","queen_of_clubs", "queen_of_diamonds", "queen_of_hearts", "queen_of_spades","king_of_clubs", "king_of_diamonds", "king_of_hearts", "king_of_spades"]
   
    var deck = ["2_of_clubs", "2_of_diamonds", "2_of_hearts", "2_of_spades", "3_of_clubs", "3_of_diamonds", "3_of_hearts", "3_of_spades", "4_of_clubs", "4_of_diamonds", "4_of_hearts", "4_of_spades", "5_of_clubs", "5_of_diamonds", "5_of_hearts", "5_of_spades","6_of_clubs", "6_of_diamonds", "6_of_hearts", "6_of_spades","7_of_clubs", "7_of_diamonds", "7_of_hearts", "7_of_spades","8_of_clubs", "8_of_diamonds", "8_of_hearts", "8_of_spades","9_of_clubs", "9_of_diamonds", "9_of_hearts", "9_of_spades","10_of_clubs", "10_of_diamonds", "10_of_hearts", "10_of_spades","ace_of_clubs", "ace_of_diamonds", "ace_of_hearts", "ace_of_spades","jack_of_clubs", "jack_of_diamonds", "jack_of_hearts", "jack_of_spades","queen_of_clubs", "queen_of_diamonds", "queen_of_hearts", "queen_of_spades","king_of_clubs", "king_of_diamonds", "king_of_hearts", "king_of_spades"]
    
    var deckValue = [ "hidden": 0, "2_of_clubs" : 2 , "2_of_diamonds": 2 , "2_of_hearts": 2, "2_of_spades": 2, "3_of_clubs": 3, "3_of_diamonds": 3, "3_of_hearts": 3, "3_of_spades": 3, "4_of_clubs":4, "4_of_diamonds":4, "4_of_hearts":4, "4_of_spades":4, "5_of_clubs":5, "5_of_diamonds":5, "5_of_hearts":5, "5_of_spades":5,"6_of_clubs":6, "6_of_diamonds":6, "6_of_hearts":6, "6_of_spades":6,"7_of_clubs":7, "7_of_diamonds":7, "7_of_hearts":7, "7_of_spades":7,"8_of_clubs":8, "8_of_diamonds":8, "8_of_hearts":8, "8_of_spades":8,"9_of_clubs":9, "9_of_diamonds":9, "9_of_hearts":9, "9_of_spades":9,"10_of_clubs":10, "10_of_diamonds":10, "10_of_hearts":10, "10_of_spades":10,"ace_of_clubs":1, "ace_of_diamonds":1, "ace_of_hearts":1, "ace_of_spades":1,"jack_of_clubs":11, "jack_of_diamonds":11, "jack_of_hearts":11, "jack_of_spades":11,"queen_of_clubs":12, "queen_of_diamonds":12, "queen_of_hearts":12, "queen_of_spades":12,"king_of_clubs":13, "king_of_diamonds":13, "king_of_hearts":13, "king_of_spades":13]
    
    
    var row1col1 : [Int] = []
    var row1col1face = ""
    var row1col2 : [Int] = []
    var row1col2face = ""
    var row1col3 : [Int] = []
    var row1col3face = ""
    var row2col1 : [Int] = []
    var row2col1face = ""
    var row2col2 : [Int] = []
    var row2col2face = ""
    var row2col3 : [Int] = []
    var row2col3face = ""
    var matchesArray : [Int] = []
    var beehive : [Int] = []
    var beehiveIndex = 0
    var beehiveFaceA: [String] = []
    var beehiveFace = ""
    var workingCardTop = ""
    var matchedSets = 0
    
    
    var card = 0
    
    
    init()
    {
        shuffledeck()
        beehiveFace = deck[0]
        beehiveFaceA.append(deck[0])
        for index in 1...10
        {
            beehiveFaceA.append(deck[index])
            beehive.append(deckValue[deck.removeFirst()]!)
            
        }
        row1col1face = deck[0]
        
        row1col1.append(deckValue[deck.removeFirst()]!)
        row1col2face = deck[0]
        row1col2.append(deckValue[deck.removeFirst()]!)
        row1col3face = deck[0]
        row1col3.append(deckValue[deck.removeFirst()]!)
        row2col1face = deck[0]
        row2col1.append(deckValue[deck.removeFirst()]!)
        row2col2face = deck[0]
        row2col2.append(deckValue[deck.removeFirst()]!)
        row2col3face = deck[0]
        row2col3.append(deckValue[deck.removeFirst()]!)
        
        workingCardTop = deck.removeFirst()
        
        matchesArray = []
        
        matchesArray.append(deckValue[row1col1face]!)
        matchesArray.append(deckValue[row1col2face]!)
        matchesArray.append(deckValue[row1col3face]!)
        matchesArray.append(deckValue[row2col1face]!)
        matchesArray.append(deckValue[row2col2face]!)
        matchesArray.append(deckValue[row2col3face]!)
       
        
        row1col1.append(deckValue[row1col1face]!)
        row1col2.append(deckValue[row1col2face]!)
        row1col3.append(deckValue[row1col3face]!)
        row2col1.append(deckValue[row2col1face]!)
        row2col2.append(deckValue[row2col2face]!)
        row2col3.append(deckValue[row2col3face]!)
    }
    func shuffledeck()
    {
        deck.shuffle()
    }
}
extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

