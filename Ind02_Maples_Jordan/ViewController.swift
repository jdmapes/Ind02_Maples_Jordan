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
        
        var blank = picCells[16]
        
        let reldis_xMin = 1.29     // Minimum relative distance between adjacent images.x coords
        let reldis_xMax = 1.78     // Maximum relative distance between adjacent images.x coords
        let reldis_yMin = 0.78     // Minimum relative distance between adjacent images.y coords
        let reldis_yMax = 1.29     // Maximum relative distance between adjacent images.y coords
        var count = 1
        
        randBool()
//        print("blank location ", picCells[16].center, " ", "right image location", picCells[17].center, " ", "top image location", picCells[13].center)

        while (count > 0) {

            var randomInt = Int.random(in: 0...19)      // Random image number to check if adjacent

            var relativeDisofTwoImg = relativeDis(blankImage: blank, image: picCells[16])

            var relDisOfImg_x = relativeDisofTwoImg.0
            var relDisOfImg_y = relativeDisofTwoImg.1
            print("Relative dis of img_x ", relDisOfImg_x, " Relative dis of img_y ", relDisOfImg_y)
            // **** Will need a case for diagonal****//

//            if (relDisOfImg_x < reldis_xMin || relDisOfImg_x > reldis_xMax) {
//                return
//            } else if (relDisOfImg_y < reldis_yMin || relDisOfImg_y > reldis_yMax) {
//                return
//            } else {
//                //Swap Function
//                let result = swaptest(blank: blank, image: picCells[randomInt])
//
//            }

            count -= 1
        }

        
        // Relative difference is calculated by taking [(newVal + reference) - reference]/ reference
        // Relative difference between blank image and comparison image, if falls in range, swap
        func relativeDis(blankImage: UIImageView, image: UIImageView) -> (Double, Double) {
            print("Called relativeDis function")            //FIX!!!

            let blank_x = Double(blankImage.center.x)
            let blank_y = Double(blankImage.center.y)

            let _a = Double(image.center.x)
            let _b = Double(image.center.y)

            let relDisofImage_x = Double(((blank_x + _a) - blank_x) / blank_x)
            let relDisofImage_y = Double(((blank_y + _b) - blank_y) / blank_y)

            return (relDisofImage_x, relDisofImage_y)
        }
//
//
//        func swaptest(blank: UIImageView, image: UIImageView) -> (CGPoint, CGPoint) {
//            // If statement checking position of next location
//            let temp = blank.center
//            blank.center = image.center
//            image.center = temp
//            return(picCells[16].center, picCells[17].center)
//        }
        func randBool() {
            var upOrRight = Bool.random()
            
            // Starts the blank image swapping up or Right
            print(upOrRight)
        
            // If statement will only execute the first loop
            //First Swap
            if upOrRight {
                //Swap with 17
                let temp = blank.center
                blank.center = picCells[17].center
                picCells[17].center = temp
                print("Swapped with 17")
            } else {
                //Swap with 12
                let temp = blank.center
                blank.center = picCells[12].center
                picCells[12].center = temp
                print("Swapped with 13")
            }
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
    


