//
//  ViewController.swift
//  Beehive Solitare
//
//  Created by Baxter Coronado on 2/15/18.
//  Copyright © 2018 bbbax. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    var deck = Deck.init()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateFaces()
       
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_resetGame(_ sender: UIButton)
    {
        resetGame()
        updateFaces()
    }
    
    @IBOutlet weak var lbl_row1col1: UILabel!
    @IBOutlet weak var btn_row1col1: UIButton!
    @IBAction func row1col1click(_ sender: UIButton)
    {
        let face = deck.row1col1face
        let value = deck.deckValue[face]
        
        print("Match", isMatchGarden(card: value!))
        print(deck.matchesArray)
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 0, card: value!, face: face)
            deck.matchesArray[0] = 0
            deck.row1col1face = "hidden"
            btn_row1col1.isHidden = true
            
        }
        updateCardArray()
        print("count", deck.row1col1.count)
        if(deck.row1col1.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[0] = 0
            btn_row1col1.isHidden = true
        }
      
    }
    
    
    @IBOutlet weak var lbl_row1col2: UILabel!
    @IBOutlet weak var btn_row1col2: UIButton!
    @IBAction func btn_row1col2click(_ sender: UIButton)
    {
        let face = deck.row1col2face
        let value = deck.deckValue[face]
        print("value", value)
        print("Match", isMatchGarden(card: value!))
        
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 1, card: value!, face: face)
            deck.matchesArray[1] = 0
            deck.row1col2face = "hidden"
            btn_row1col2.isHidden = true
            print("button 2", deck.matchesArray)
            
            
        }
        updateCardArray()
        if(deck.row1col2.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[1] = 0
            btn_row1col2.isHidden = true
        }
        
    }
    
    
    @IBOutlet weak var lbl_row1col3: UILabel!
    @IBOutlet weak var btn_row1col3: UIButton!
    @IBAction func btn_row1col3click(_ sender: UIButton) {
        let face = deck.row1col3face
        let value = deck.deckValue[face]
        print("value", value)
        print("Match", isMatchGarden(card: value!))
        print(deck.matchesArray)
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 2, card: value!, face: face)
            deck.matchesArray[2] = 0
            deck.row1col2face = "hidden"
            print("button 3", deck.matchesArray)
            
            
        }
        updateCardArray()
        if(deck.row1col3.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[2] = 0
            btn_row1col3.isHidden = true
        }
        
    }
    
    
    @IBOutlet weak var lbl_row2col1: UILabel!
    @IBOutlet weak var btn_row2col1: UIButton!
    @IBAction func btn_row1col1click(_ sender: UIButton) {
        let face = deck.row2col1face
        let value = deck.deckValue[face]
        print(value)
        print(isMatchGarden(card: value!))
        print(deck.matchesArray)
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 3, card: value!, face: face)
            deck.matchesArray[3] = 0
            deck.row2col1face = "hidden"
            btn_row2col1.isHidden = true
            
            
        }
        updateCardArray()
        if(deck.row2col1.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[3] = 0
            btn_row2col1.isHidden = true
        }
    }
    
    
    @IBOutlet weak var lbl_row2col2: UILabel!
    @IBOutlet weak var btn_row2col2: UIButton!
    @IBAction func btn_row2col2click(_ sender: UIButton) {
        let face = deck.row2col2face
        let value = deck.deckValue[face]
        print(value)
        print(isMatchGarden(card: value!))
        print(deck.matchesArray)
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 4, card: value!, face: face)
            deck.matchesArray[4] = 0
            deck.row2col2face = "hidden"
            btn_row2col2.isHidden = true
           
            
        }
        updateCardArray()
        if(deck.row2col2.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[4] = 0
            btn_row2col2.isHidden = true
        }
    }
    
    
    @IBOutlet weak var lbl_row2col3: UILabel!
    @IBOutlet weak var btn_row2col3: UIButton!
    @IBAction func btn_row2col3click(_ sender: UIButton) {
        let face = deck.row2col3face
        let value = deck.deckValue[face]
        print("value", value)
        print("Match", isMatchGarden(card: value!))
        print(deck.matchesArray)
        if(isMatchGarden(card: value!))
        {
            moveCardGarden(index: 5, card: value!, face: face)
            deck.matchesArray[5] = 0
            deck.row2col3face = "hidden"
            btn_row2col3.isHidden = true
            
            
        }
       updateCardArray()
        if(deck.row2col3.count == 4)
        {
            deck.matchedSets += 1
            deck.matchesArray[5] = 0
            btn_row2col3.isHidden = true
        }
    }
    
    @IBOutlet weak var lbl_beehive: UIButton!
    
    @IBAction func btn_beehiveClick(_ sender: UIButton)
    {
        let face = deck.beehiveFace
        let value = deck.deckValue[face]
        print("value", value)
        print("Match", isMatchGarden(card: value!));        if(isMatch(card: value!))
        {
            var index = deck.matchesArray.index(of: value!)
             if index == nil{ index = deck.matchesArray.index(of: 0) }
            print(index)
            moveCard(index: index!, face: face)
            
            if(deck.beehiveIndex > 9)
            {
                
                let alertController = UIAlertController(title: "Oops!", message: "Beehive is empty.", preferredStyle: UIAlertControllerStyle.alert)
                
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                lbl_beehive.isHidden = true
            }
            else
            {
                deck.beehiveIndex += 1
            }
            
           deck.beehiveFace = deck.beehiveFaceA[deck.beehiveIndex]
           print(deck.beehiveFace)
            updateFaces()
            updateMatchesArray()
            updateCardArray()
        }
        
    }
    @IBOutlet weak var btn_beehive: UIButton!
    @IBAction func btn_workingCardTopClick(_ sender: UIButton)
    {
        
        let face = deck.workingCardTop
        let value = deck.deckValue[face]
        print(value)
        print("match", isMatch(card: value!))
        print("value", value)
        print(deck.matchesArray)
        //move card
        if(isMatch(card: value!))
        {
            var index = deck.matchesArray.index(of: value!)
            if index == nil{ index = deck.matchesArray.index(of: 0) }
            print("index", index)
            moveCard(index: index!, face: face)
            
            deck.workingCardTop = deck.deck.removeFirst()
            updateFaces()
            updateMatchesArray()
            print("update working button", deck.matchesArray)
            updateCardArray()
        }
        
        
        
        
        
        
    
}
    @IBOutlet weak var btn_workingCardTop: UIButton!
    @IBOutlet weak var img_workingCardMiddle: UIImageView!
    @IBOutlet weak var img_workingCardBottom: UIImageView!
    @IBAction func btn_NextCardFromDeck(_ sender: UIButton)
    {
        
    }
    @IBOutlet weak var btn_NextCardFromDeckImage: UIButton!
    
    func resetGame()
    {
        deck = Deck.init()
        btn_row1col1.isHidden = false
        btn_row1col2.isHidden = false
        btn_row1col3.isHidden = false
        btn_row2col1.isHidden = false
        btn_row2col2.isHidden = false
        btn_row2col3.isHidden = false
        btn_beehive.isHidden = false
       
        lbl_row1col1.text = String(1)
        lbl_row1col2.text = String(1)
        lbl_row1col3.text = String(1)
        lbl_row2col1.text = String(1)
        lbl_row2col2.text = String(1)
        lbl_row2col3.text = String(1)
        
        deck.row1col3.removeAll()
        deck.row1col2.removeAll()
        deck.row1col1.removeAll()
        deck.row2col1.removeAll()
        deck.row2col2.removeAll()
        deck.row2col3.removeAll()
        
    }
    func updateFaces()
    {
        btn_row1col1.setImage(UIImage(named: "\(deck.row1col1face)"), for: UIControlState.normal)
        btn_row1col2.setImage(UIImage(named: "\(deck.row1col2face)"), for: UIControlState.normal)
        btn_row1col3.setImage(UIImage(named: "\(deck.row1col3face)"), for: UIControlState.normal)
        btn_row2col1.setImage(UIImage(named: "\(deck.row2col1face)"), for: UIControlState.normal)
        btn_row2col2.setImage(UIImage(named: "\(deck.row2col2face)"), for: UIControlState.normal)
        btn_row2col3.setImage(UIImage(named: "\(deck.row2col3face)"), for: UIControlState.normal)
        btn_workingCardTop.setImage(UIImage(named: "\(deck.workingCardTop)"), for: UIControlState.normal)
        btn_beehive.setImage(UIImage(named: "\(deck.beehiveFace)"), for: UIControlState.normal)
        
    }
    
    func isMatch(card: Int) -> Bool
    {
        
        return deck.matchesArray.contains(card) || deck.matchesArray.contains(0)
        
    }
    func isMatchGarden(card: Int) -> Bool
    {
        var count = 0
        for item in deck.matchesArray
        {
            if(item == card)
            {
                count += 1
            }
        }
        return count >= 2
        
    }
    
    
    
    
    func moveCard(index: Int, face: String)
    {
        if(index == 0 || (btn_row1col1.isHidden && deck.row1col1face == face))
        {
            btn_row1col1.isHidden = false
            deck.row1col1face = face
            deck.row1col1.append(deck.deckValue[face]!)
            
        }
        else if(index == 1 || (btn_row1col2.isHidden && deck.row1col2face == face))
        {
            btn_row1col2.isHidden = false
            deck.row1col2.append(deck.deckValue[face]!)
            deck.row1col2face = face
        }
        else if(index == 2 || (btn_row1col3.isHidden && deck.row1col3face == face))
        {
            btn_row1col3.isHidden = false
            deck.row1col3.append(deck.deckValue[face]!)
            deck.row1col3face = face
        }
        else if(index == 3  || (btn_row2col1.isHidden && deck.row2col1face == face))
        {
            btn_row2col1.isHidden = false
            deck.row2col1.append(deck.deckValue[face]!)
            deck.row2col1face = face
        }
        else if(index == 4 || (btn_row2col2.isHidden && deck.row2col2face == face))
        {
            btn_row2col2.isHidden = false
            deck.row2col2.append(deck.deckValue[face]!)
            deck.row2col2face = face
        }
        else{
            btn_row2col3.isHidden = false
            deck.row2col3.append(deck.deckValue[face]!)
            deck.row2col3face = face
        }
        updateFaces()
        
    }
    
    //takes index of button pushed, card value, and card face
    func moveCardGarden(index: Int, card: Int, face: String)
    {
      
        var num = 0
        
        
        while(num == index || deck.matchesArray[num] != card)
        {
            num += 1
        }
       
        if(num == 0)
        {
            moveCard(index: num, face: face)
        }
        else if(num == 1)
        {
             moveCard(index: num, face: face)
        }
        else if(num == 2)
        {
            moveCard(index: num, face: face)
        }
        else if(num == 3)
        {
            moveCard(index: num, face: face)
        }
        else if(num == 4)
        {
            moveCard(index: num, face: face)
        }
        else{
            moveCard(index: num, face: face)
        }
        
        
        
    }
    
    func updateMatchesArray()
    {
        if(deck.deckValue[deck.row1col1face]! != 0){deck.matchesArray[0] = deck.deckValue[deck.row1col1face]!}
        if(deck.deckValue[deck.row1col2face] != 0){deck.matchesArray[1] = deck.deckValue[deck.row1col2face]!}
        if(deck.deckValue[deck.row1col3face]! != 0){deck.matchesArray[2] = deck.deckValue[deck.row1col3face]!}
        if(deck.deckValue[deck.row2col1face]! != 0){deck.matchesArray[3] = deck.deckValue[deck.row2col1face]!}
        if(deck.deckValue[deck.row2col2face]! != 0){deck.matchesArray[4] = deck.deckValue[deck.row2col2face]!}
        if(deck.deckValue[deck.row2col3face]! != 0){deck.matchesArray[5] = deck.deckValue[deck.row2col3face]!}
        
    }
    func updateCardArray()
    {
        
        lbl_row1col1.text = String(deck.row1col1.count)
        lbl_row1col2.text = String(deck.row1col2.count)
        lbl_row1col3.text = String(deck.row1col3.count)
            lbl_row2col1.text = String(deck.row2col1.count)

            lbl_row2col2.text = String(deck.row2col2.count)

            lbl_row2col3.text = String(deck.row2col3.count)

        
        
    }
    
    

}

