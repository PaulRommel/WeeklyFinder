//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Павел Попов on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!    
    @IBOutlet weak var resultLabel: UILabel!
     
    @IBAction func findDay(_ sender: UIButton) {
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let data = calendar.date(from: dateComponents)
        
        let weekday = dateFormatter.string(from: data!)
        
        resultLabel.text = weekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

