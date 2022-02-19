//
//  ViewController.swift
//  Ind02_Maples_Jordan
//
//  Created by Jordan Maples on 2/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var picCells: [UIImageView]!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // Create Objects of class type cells with a position and it's center
    class Cells {
        var origPos: Int
        var x_y: CGPoint
        
        init(pos: Int, X_Y: CGPoint) {
            self.origPos = pos
            self.x_y = X_Y
        }
    }

}

