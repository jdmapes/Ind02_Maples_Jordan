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
    
  
    @IBAction func tap01(_ sender: UITapGestureRecognizer) {
        print("tapped 1")
        swap(image: picCells[0])
    }
    
    @IBAction func tap02(_ sender: UITapGestureRecognizer) {
        print("tapped 2")
        swap(image: picCells[1])
    }
    
    @IBAction func tap03(_ sender: UITapGestureRecognizer) {
        print("tapped 3")
        swap(image: picCells[2])
    }
    
    @IBAction func tap04(_ sender: UITapGestureRecognizer) {
        print("tapped 4")
        swap(image: picCells[3])
    }
    
    @IBAction func tap05(_ sender: UITapGestureRecognizer) {
        print("tapped 5")
        swap(image: picCells[4])
    }
    
    @IBAction func tap06(_ sender: UITapGestureRecognizer) {
        print("tapped 6")
        swap(image: picCells[5])
    }
    
    @IBAction func tap07(_ sender: UITapGestureRecognizer) {
        print("tapped 7")
        swap(image: picCells[6])
    }
    
    @IBAction func tap08(_ sender: UITapGestureRecognizer) {
        print("tapped 8")
        swap(image: picCells[7])
    }
    
    @IBAction func tap09(_ sender: UITapGestureRecognizer) {
        print("tapped 9")
        swap(image: picCells[8])
    }
    
    @IBAction func tap10(_ sender: UITapGestureRecognizer) {
        print("tapped 10")
        swap(image: picCells[9])
    }
    
    @IBAction func tap11(_ sender: UITapGestureRecognizer) {
        print("tapped 11")
        swap(image: picCells[10])
    }
    
    @IBAction func tap12(_ sender: UITapGestureRecognizer) {
        print("tapped 12")
        swap(image: picCells[11])
    }
    
    @IBAction func tap13(_ sender: UITapGestureRecognizer) {
        print("tapped 13")
        swap(image: picCells[12])
    }
    
    @IBAction func tap14(_ sender: UITapGestureRecognizer) {
        print("tapped 14")
        swap(image: picCells[13])
    }
    
    @IBAction func tap15(_ sender: UITapGestureRecognizer) {
        print("tapped 15")
        swap(image: picCells[14])
    }
    
    @IBAction func tap16(_ sender: UITapGestureRecognizer) {
        print("tapped 16")
        swap(image: picCells[15])
    }
    
    
    @IBAction func blankTap(_ sender: UITapGestureRecognizer) {
        print("blanks location is: ", picCells[16].center)
    }
    
    @IBAction func taptest(_ sender: UITapGestureRecognizer) {
        print("tapped 18")
        swap(image: picCells[17])
    }
    
    @IBAction func tap19(_ sender: UITapGestureRecognizer) {
        print("tapped 19")
        swap(image: picCells[18])
    }
    
    @IBAction func tap20(_ sender: UITapGestureRecognizer) {
        print("tapped 20")
        swap(image: picCells[19])
    }
    
    func swap(image: UIImageView) {
        // If statement checking position of next location
        let blank = picCells[16]
        
        let blank_x = blank.center.x
        let blank_y = blank.center.y
        
        let image_x = image.center.x
        let image_y = image.center.y
        
        if (((blank_x - image_x) > 71 || (blank_x - image_x) < -71) ||
            ((blank_y - image_y) > 72 || (blank_y - image_y) < -72)) || (blank.center == image.center){
            
            
            print("Swap Should fail")
        } else {
            print("Swap Should succeed")
            UIView.animate(withDuration: 1, delay: 0.1, animations: {
                let temp = self.picCells[16].center
                self.picCells[16].center = image.center
                image.center = temp })
        }
        
        return()
    }
    
    
    
    
       
    
    
    
}


