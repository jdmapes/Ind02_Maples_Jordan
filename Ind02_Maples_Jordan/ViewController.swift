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
//      print(picCells[16].center.y) // Prints y coordinate of image
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
        
        print("Shuffle Tapped")     //FIXME!!!!
        
        
        
        let reldis_xMin = 1.29     // Minimum relative distance between adjacent images.x coords
        let reldis_xMax = 1.78     // Maximum relative distance between adjacent images.x coords
        let reldis_yMin = 0.78     // Minimum relative distance between adjacent images.y coords
        let reldis_yMax = 1.29     // Maximum relative distance between adjacent images.y coords
        var count = 0
        
        let upOrRight = Bool.random()    // Starts the blank image swapping up or Right
        
        while (count > 0) {
            //First Swap
            if upOrRight {
                //Swap 17
            } else {
                //Swap 13
            }
            
            
            let result = relativeDis(image: picCells[16])
            
            var relDisOfImg_x = result.0
            var relDisOfImg_y = result.1
            
            //**** Will need a case for diagonal****//
            
            if (relDisOfImg_x < reldis_xMin || relDisOfImg_x > reldis_xMax) {
                break
            } else if (relDisOfImg_y < reldis_yMin || relDisOfImg_y > reldis_yMin) {
                break
            } else {
                //Swap Function
            }
            
            
            
            
              
            
            
            
            count -= 1
        }
        
        
        // Relative difference is calculated by taking [(newVal + reference) - reference]/ reference
        // Relative difference between blank image and comparison image, if falls in range, swap
        func relativeDis(image: UIImageView) -> (Double, Double) {
            var blank_x = Double(image.center.x)     // blank will update
            var blank_y = Double(image.center.y)     // blank will update
            
            var randomInt = Int.random(in: 0...19)
            
            var _a = Double(picCells[randomInt].center.x)
            var _b = Double(picCells[randomInt].center.y)
            
            var relDisofImage_x = (blank_x + _a) - blank_x / blank_x
            var relDisofImage_y = (blank_y + _a) - blank_y / blank_y
            
            return (relDisofImage_x, relDisofImage_y)
        }
//        let result = swaptest()
//
//        func swaptest() -> (CGPoint, CGPoint) {
//            // If statement checking position of next location
//            let temp = picCells[16].center
//            picCells[16].center = picCells[17].center
//            picCells[17].center = temp
//            return(picCells[16].center, picCells[17].center)
//        }
//
//        picCells[17].center = result.1
//        picCells[16].center = result.0
//
//        print(picCells[16].center, " ", picCells[17].center)
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
    

