//
//  ViewController.swift
//  StoryboardLess
//
//  Created by Alex Oh on 9/24/15.
//  Copyright © 2015 Alex Oh. All rights reserved.
//

import UIKit

// player turn
// scores (1,2,stalemate)
// reset scores
// reset board
// chosen space

class ViewController: UIViewController {

    var grid = [[0,0,0],[0,0,0],[0,0,0]]
    
    // grid[0][0] = grid[row][col]
    
    
    var isPlayer1Turn = true
    
    var player1Score = 0
    var player2Score = 0
    var stalemateScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        for (r,row) in grid.enumerate() {
            
            for (c,_) in row.enumerate() {
                
                let x = c * 110
                let y = r * 110
                
                let button = TTTButton(frame: CGRect(x: x, y: y, width: 100, height: 100))
                button.backgroundColor = UIColor.cyanColor()
                
                button.row = r
                button.col = c
                
                button.addTarget(self, action: "spacePressed:", forControlEvents: .TouchUpInside)
                view.addSubview(button)
                
            }
            
        }


        
        //  tag allows you  to identify the button in a very simple fashion - in integer form
        
        // "spacePressed: has a colon because in the function below it contains a parameter. If there were no parameters then there would be no colon.
        
    }
    
    func spacePressed(button: TTTButton) {
        
        if button.player == 0 {
            
//            if isPlayer1Turn {
//                
//                button.player = 1
//                
//            } else {
//                
//                button.player = 2
//                
//            }
//            All of this is the same as
//            button.player = isPlayer1Turn ? 1 : 2
            
            
            
            
            button.player = isPlayer1Turn ? 1 : 2
            
            grid[button.row][button.col] = isPlayer1Turn ? 1 : 2
            
            isPlayer1Turn = !isPlayer1Turn
            
//            ! is a "not"
//            isPlayer1Turn becomes the opposite of      isPlayer1Turn
            
            checkForWinner()
            
        }
        
//        print("button works")
        
    }
    
    func checkForWinner() {
        
        // r,c
        
        // row 1 0,0 0,1 0,2
        // row 2 1,0 1,1 1,2
        // row 3 2,0 2,1 2,2
        // col 1 0,0,1,0 2,0
        // col 2 0,1 1,1 2,1
        // col 3 0,2 1,2 2,2
        // dia 1 0,0 1,1 2,2
        // dia 2 2,0 1,1 0,2
        
        let possibilities = [
        
            ((0,0),(0,1),(0,2))
         
//        Use these coordinates to get a value from the array
        
        ]
        
        for possibility in possibilities {
            
            let (p1,p2,p3) = possibility
            
            let value1 = grid[p1.0][p1.1]
            let value2 = grid[p2.0][p2.1]
            let value3 = grid[p3.0][p3.1]
            
            if value1 == value2 && value2 == value3 {
            
                if value1 != 0 {
                
                // someone won
                print(value1)
                
                } else {
                    
                    print("all zeros")
                    
                }
            } else {
                
                print("does not match")
            }
        }
    }

}

class TTTButton: UIButton {
    
    var row = 0
    var col = 0
    
    var player = 0 {
        
        didSet {
            // when the value of player DID get SET, this gets fired
            // will run when the value of player changes
            
            switch player {
                
            // player is 1 or 2, which determines which case it is
            case 1 : backgroundColor = UIColor.magentaColor()
            case 2 : backgroundColor = UIColor.yellowColor()
            default : backgroundColor = UIColor.cyanColor()
                
            }
            
        }
        
    }
    
}








