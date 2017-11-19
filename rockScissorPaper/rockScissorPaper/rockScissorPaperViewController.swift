//
//  rockScissorPaperViewController.swift
//  rockScissorPaper
//
//  Created by Joyce Du on 2017/11/13.
//  Copyright © 2017年 Joyce Du. All rights reserved.
//

import UIKit
import GameplayKit

class rockScissorPaperViewController: UIViewController {

    @IBOutlet weak var rockUIBotton: UIButton!
    @IBOutlet weak var scissorUIBotton: UIButton!
    @IBOutlet weak var paperUIBotton: UIButton!
    @IBOutlet weak var resultUILabel: UILabel!
    @IBOutlet weak var computerUIImageView: UIImageView!
    
    @IBAction func againButton(_ sender: Any) {
        computerUIImageView.image = UIImage(named: "剪刀石頭布2")
        rockUIBotton.alpha = 1
        scissorUIBotton.alpha = 1
        paperUIBotton.alpha = 1
        resultUILabel.text = ""
    }
    
    
    
    @IBAction func gameStart(_ sender: UIButton) {
        let rps = ["rock","paper","scissor"]
        let playerSelection = rps [sender.tag]
        let random = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let computerSelection = rps[random.nextInt()]
        
        
        if computerSelection == "rock" {
            computerUIImageView.image = UIImage(named: "rock")
        } else if computerSelection == "scissor" {
            computerUIImageView.image = UIImage(named:"scissor")
        } else if computerSelection == "paper" {
            computerUIImageView.image = UIImage(named:"paper")
        }
        
        print("playerSelection \(playerSelection)")
        print("computerSelection \(computerSelection)")
        
        
        if playerSelection == computerSelection {
            resultUILabel.text = "平手"
            if playerSelection == "paper" && computerSelection == "paper" {
                rockUIBotton.alpha = 0.3
                scissorUIBotton.alpha = 0.3
            } else if playerSelection == "rock" && computerSelection == "rock" {
                scissorUIBotton.alpha = 0.3
                paperUIBotton.alpha = 0.3
            } else if playerSelection == "scissor" && computerSelection == "scissor" {
                paperUIBotton.alpha = 0.3
                rockUIBotton.alpha = 0.3
            }
            
        } else if paperUIBotton.tag == sender.tag {
            if computerSelection == "scissor" {
                resultUILabel.text = "你輸了"
                rockUIBotton.alpha = 0.3
                scissorUIBotton.alpha = 0.3
                
            }
            if computerSelection == "rock" {
                resultUILabel.text = "你贏了"
                rockUIBotton.alpha = 0.3
                scissorUIBotton.alpha = 0.3
            }
            
        
         } else if scissorUIBotton.tag == sender.tag {
            if computerSelection == "rock" {
                resultUILabel.text = "你輸了"
                rockUIBotton.alpha = 0.3
                paperUIBotton.alpha = 0.3
            }
            if computerSelection == "paper"{
                resultUILabel.text = "你贏了"
                rockUIBotton.alpha = 0.3
                paperUIBotton.alpha = 0.3
            }
            
        } else if rockUIBotton.tag == sender.tag {
            if computerSelection == "scissor" {
                resultUILabel.text = "你贏了"
                scissorUIBotton.alpha = 0.3
                paperUIBotton.alpha = 0.3
            }
            if computerSelection == "paper"{
                resultUILabel.text = "你輸了"
                scissorUIBotton.alpha = 0.3
                paperUIBotton.alpha = 0.3
            }
}

}
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
