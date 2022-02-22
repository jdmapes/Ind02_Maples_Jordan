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
    
    // Shuffle Action Jackson
    @IBAction func shuffleTapped(_ sender: UITapGestureRecognizer) {
        
        let blank = picCells[16]
        
        var count = 25
        var counter = 0

        while (count > 0) {
            
            let bCen_x = blank.center.x
            let bCen_y = blank.center.y
            
            let randomInt = Int.random(in: 0...19)      // Random image number to check if adjacent
            
            print("random int", randomInt)
            print("blank center", blank.center, "random int center", picCells[randomInt].center)
            
            let imgCen_x = picCells[randomInt].center.x     // Takes x coord of the  random image's CGPoint
            let imgCen_y = picCells[randomInt].center.y     // Takes y coord of the  random image's CGPoint
            
            if (((bCen_x - imgCen_x) > 71 || (bCen_x - imgCen_x) < -71) ||
                ((bCen_y - imgCen_y) > 72 || (bCen_y - imgCen_y) < -72)) || (blank.center == picCells[randomInt].center){
                count += 1
                counter += 1
                print("Should fail")
            } else {
                print("should succeed")
                swap(randInt: randomInt)
                counter += 1
            }
            print("While Loop Ran")
            print("How many times it ran:", counter)
            count -= 1
        }

        func swap(randInt: Int) {
            // If statement checking position of next location
            UIView.animate(withDuration: 1, delay: 1, animations: {
            let temp = blank.center
                blank.center = self.picCells[randInt].center
                self.picCells[randInt].center = temp })
            return()
        }
        
    }
    
    
}


