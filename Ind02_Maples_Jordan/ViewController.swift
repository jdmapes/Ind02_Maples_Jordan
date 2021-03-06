//
//  ViewController.swift
//  Ind02_Maples_Jordan
//
//  Created by Jordan Maples on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var picCells: [UIImageView]!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCellTag()
        
    }

    // Dictionary of [Position of Image : CenterPoint for that Image]
    var image_centers = [Int: CGPoint]()
    
    // Set picCell Tag
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

        while count > 0 {
            
            let bCen_x = blank.center.x
            let bCen_y = blank.center.y
            
            let randomInt = Int.random(in: 0...19)      // Random image number to check if adjacent
        
            let imgCen_x = picCells[randomInt].center.x     // Takes x coord of the  random image's CGPoint
            let imgCen_y = picCells[randomInt].center.y     // Takes y coord of the  random image's CGPoint
            
            if (((bCen_x - imgCen_x) > 71 || (bCen_x - imgCen_x) < -71) ||
                ((bCen_y - imgCen_y) > 72 || (bCen_y - imgCen_y) < -72)) || (blank.center == picCells[randomInt].center){
                count += 1
            } else {
                swap(randInt: randomInt)
            }
           
            count -= 1
        }
        
        // Swap shuffle with adjacent images in solveable manner
        func swap(randInt: Int) {
            
            UIView.animate(withDuration: 1, delay: 1, animations: {
                let temp = blank.center
                blank.center = self.picCells[randInt].center
                self.picCells[randInt].center = temp })
            return()
        }
    }
    
    
    // MARK: Tap Gesture Recognizers
    
    @IBAction func tap01(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[0])
        checkWin ()
    }
    
    @IBAction func tap02(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[1])
        checkWin ()
    }
    
    @IBAction func tap03(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[2])
        checkWin ()
    }
    
    @IBAction func tap04(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[3])
        checkWin ()
    }
    
    @IBAction func tap05(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[4])
        checkWin ()
    }
    
    @IBAction func tap06(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[5])
        checkWin ()
    }
    
    @IBAction func tap07(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[6])
        checkWin ()
    }
    
    @IBAction func tap08(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[7])
        checkWin ()
    }
    
    @IBAction func tap09(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[8])
        checkWin ()
    }
    
    @IBAction func tap10(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[9])
        checkWin ()
    }
    
    @IBAction func tap11(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[10])
        checkWin ()
    }
    
    @IBAction func tap12(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[11])
        checkWin ()
    }
    
    @IBAction func tap13(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[12])
        checkWin ()
    }
    
    @IBAction func tap14(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[13])
        checkWin ()
    }
    
    @IBAction func tap15(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[14])
        checkWin ()
    }
    
    @IBAction func tap16(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[15])
        checkWin ()
    }
    
    @IBAction func blankTap(_ sender: UITapGestureRecognizer) { // FIXME!!! REMOVE at the end
        print("blanks location is: ", picCells[16].center)
    }
    
    @IBAction func taptest(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[17])
        checkWin ()
    }
    
    @IBAction func tap19(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[18])
        checkWin ()
    }
    
    @IBAction func tap20(_ sender: UITapGestureRecognizer) {
        swap(image: picCells[19])
        checkWin ()
    }
    
    
    // Swap Image only if it is next to blank space
    func swap(image: UIImageView) {
        
        let blank = picCells[16]
        
        let blank_x = blank.center.x
        let blank_y = blank.center.y
        
        let image_x = image.center.x
        let image_y = image.center.y

        // If statement checking position of next location
        if (((blank_x - image_x) > 71 || (blank_x - image_x) < -71) ||
            ((blank_y - image_y) > 72 || (blank_y - image_y) < -72)) || (blank.center == image.center){
        } else {
            
            UIView.animate(withDuration: 0.25, delay: 0.1, animations: {
                let temp = self.picCells[16].center
                self.picCells[16].center = image.center
                image.center = temp })
        }
        
        return()
    }
    
    // Win Alert
    func winAlert() {
        let win = UIAlertController(title: "DING DING!", message: "Welcome to the 4th dimension", preferredStyle: .alert)
        
        win.addAction(UIAlertAction(title: "Reset", style: .default, handler: nil))
        
        self.present(win, animated: true, completion: nil)      // Add another action
    }
    
    
    // Check Win Function
    func checkWin () {
        for i in 0...19 {

            if (picCells[i].center == image_centers[i + 1]) && i != 19 {
                continue
            } else if picCells[i].center != image_centers[i + 1] {
                break
            } else {
                winAlert()
            }
            
        }
            
    }
}


