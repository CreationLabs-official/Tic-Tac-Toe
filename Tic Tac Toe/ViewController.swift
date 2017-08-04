//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Mustafa Yusuf on 04/08/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var box: [UIButton]!

	@IBOutlet weak var winnerLabel: UILabel!
	var chance = "X"
	
	func didWin() {
		if box[0].currentTitle == box[1].currentTitle && box[1].currentTitle == box[2].currentTitle && box[0].currentTitle == box[2].currentTitle {
			won(who: (box[0].currentTitle))
		} else if box[3].currentTitle == box[4].currentTitle && box[4].currentTitle == box[5].currentTitle && box[3].currentTitle == box[5].currentTitle {
			won(who: (box[3].currentTitle))
		} else if box[6].currentTitle == box[7].currentTitle && box[7].currentTitle == box[8].currentTitle && box[6].currentTitle == box[8].currentTitle {
			won(who: (box[6].currentTitle))
		} else if box[3].currentTitle == box[4].currentTitle && box[4].currentTitle == box[5].currentTitle && box[3].currentTitle == box[5].currentTitle {
			won(who: (box[3].currentTitle))
		} else if box[0].currentTitle == box[4].currentTitle && box[4].currentTitle == box[8].currentTitle && box[0].currentTitle == box[8].currentTitle {
			won(who: (box[0].currentTitle))
		} else if box[2].currentTitle == box[4].currentTitle && box[4].currentTitle == box[6].currentTitle && box[2].currentTitle == box[6].currentTitle {
			won(who: (box[2].currentTitle))
		} else if box[0].currentTitle == box[3].currentTitle && box[3].currentTitle == box[6].currentTitle && box[0].currentTitle == box[6].currentTitle {
			won(who: (box[0].currentTitle))
		} else if box[1].currentTitle == box[4].currentTitle && box[4].currentTitle == box[7].currentTitle && box[1].currentTitle == box[7].currentTitle {
			won(who: (box[1].currentTitle))
		} else if box[2].currentTitle == box[5].currentTitle && box[8].currentTitle == box[5].currentTitle && box[2].currentTitle == box[8].currentTitle {
			won(who: (box[0].currentTitle))
		}
	}
	
	func won(who : String?) {
		if let x: String =  who {
			if x != "" {
				winnerLabel.text = x+" WINS"
			}
		}
	}
	
	
	@IBAction func didPress(_ sender: UIButton) {
		
		if chance == "X" {
			sender.setTitle("X", for: .normal)
			chance = "O"
		} else {
			sender.setTitle("O", for: .normal)
			chance = "X"
		}
		sender.isUserInteractionEnabled = false
		
		didWin()
		
		
	}

	@IBAction func restart(_ sender: Any) {
		for i in box {
			i.isUserInteractionEnabled = true
			i.setTitle("", for: .normal)
			i.setTitle("", for: .selected)
		}
		winnerLabel.text = ""
		chance = "X"
	}

}

