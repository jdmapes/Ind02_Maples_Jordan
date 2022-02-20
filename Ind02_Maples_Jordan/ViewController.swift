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
        setCellTag()
        //print(picCenters.count)  //FIXME!!! Remove before final submission
        print(image_centers)
        print(picCells[16].center) // Prints IBOutlet elements center
        print(image_centers[18]!) // Prints certain keys value
    }

    // Dictionary of [Position of Image : CenterPoint for that Image]
    var image_centers = [Int: CGPoint]()
    
    // Set picCell Tag || Image 17 is blank
    func setCellTag() {
        for (index, picCell) in picCells.enumerated() {
            picCell.tag = index + 1
            print(picCell.tag, " ", picCell.center)
            image_centers[picCell.tag] = picCell.center
        }
    }
    
    
    @IBAction func shuffleTapped(_ sender: UITapGestureRecognizer) {
        
        print("Shuffle Tapped")
        
        let result = swaptest()
        
        func swaptest() -> (CGPoint, CGPoint) {
            // If statement checking position of next location
            let temp = picCells[16].center
            picCells[16].center = picCells[17].center
            picCells[17].center = temp
            return(picCells[16].center, picCells[17].center)
        }
        
        picCells[17].center = result.1
        picCells[16].center = result.0
        
        print(picCells[16].center, " ", picCells[17].center)
    }
    
    
   
        
    
        
}
    
    
    
    
    // Create Objects of class type cells with a position and it's center
//    class picCenter {
//        var origPos: Int
//        var x_y: CGPoint
//
//        init(pos: Int, X_Y: CGPoint) {
//            self.origPos = pos
//            self.x_y = X_Y
//        }
//    }
    

