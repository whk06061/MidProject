//
//  Temp12ViewController.swift
//  Project1
//
//  Created by Mac SWU on 2020/05/03.
//  Copyright © 2020 Mac SWU. All rights reserved.
//

import UIKit

class Temp12ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var pickerView: UIPickerView!
     @IBOutlet var imageLeft: UIImageView!
     @IBOutlet var imageCenter: UIImageView!
     @IBOutlet var imageRight: UIImageView!
     @IBOutlet var viewLeft: UIView!
     @IBOutlet var viewCenter: UIView!
     @IBOutlet var viewRight: UIView!
     @IBOutlet var labelLeft: UILabel!
     @IBOutlet var labelCenter: UILabel!
     @IBOutlet var labelRight: UILabel!
     
     
     let sortArray: [String] = ["겉옷", "상의", "하의", "기타", "액세서리"]
       
     
     override func viewDidLoad() {
         super.viewDidLoad()
         viewLeft.isHidden = true
         viewCenter.isHidden = true
         viewRight.isHidden = true

         // Do any additional setup after loading the view.
     }
     
    
     @IBAction func showButton() {
        let index = pickerView.selectedRow(inComponent: 0)
         if sortArray[index] == "겉옷"
         {  imageLeft.image = UIImage(named: "jacket.png")
            imageRight.image = UIImage(named: "yasang.png")
             labelLeft.text = "자켓"
            labelRight.text = "야상"
             viewLeft.isHidden = false
             viewCenter.isHidden = true
             viewRight.isHidden = false
         }
         else if sortArray[index] == "상의"
         {
            
            imageCenter.image = UIImage(named: "mantoman.png")
            labelCenter.text = "맨투맨"
            viewLeft.isHidden = true
             viewCenter.isHidden = false
             viewRight.isHidden = true
         }
         else if sortArray[index] == "하의"
         {
             imageLeft.image = UIImage(named: "jeans.png")
            imageRight.image = UIImage(named: "cottonpants.png")
            labelLeft.text = "청바지"
            labelRight.text = "면바지"
             viewLeft.isHidden = false
             viewCenter.isHidden = true
             viewRight.isHidden = false
         }
         else if sortArray[index] == "기타"
                {
                    imageCenter.image = UIImage(named: "stocking.png")
                    labelCenter.text = "스타킹"
                    viewLeft.isHidden = true
                    viewCenter.isHidden = false
                    viewRight.isHidden = true
                }
         else if sortArray[index] == "액세서리"
                {
                 imageCenter.image = nil
                 labelCenter.text = "해당아이템이 없습니다."
                 viewLeft.isHidden = true
                 viewCenter.isHidden = false
                 viewRight.isHidden = true
                }
             
     }
    
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return sortArray.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return sortArray[row]
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
