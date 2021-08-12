//
//  FifthVC.swift
//  test_ChangeVCColorUsingNotifObservers
//
//  Created by Jervy Umandap on 8/10/21.
//

import UIKit

class FifthVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Color Picker"
        getSavedColor()
        
    }
    
    func getSavedColor() {
        guard let savedColor = UserDefaults.standard.value(forKey: "backgroundColor") as? String else { return }
        
        switch savedColor {
        case "Green":
            view.backgroundColor = .systemGreen
        case "Purple":
            view.backgroundColor = .systemPurple
        case "Pink":
            view.backgroundColor = .systemPink
        case "Teal":
            view.backgroundColor = .systemTeal
        case "Yellow":
            view.backgroundColor = .systemYellow
        case "Dark Gray":
            view.backgroundColor = .darkGray
        default:
            view.backgroundColor = .systemBackground
        }
    }

    
    @IBAction func colorButtonPressed(_ sender: UIButton) {
//        print(sender.currentTitle!)
        let color = sender.currentTitle!
        switch color {
        case "Green":
            NotificationCenter.default.post(name: .greenNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        case "Purple":
            NotificationCenter.default.post(name: .purpleNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        case "Pink":
            NotificationCenter.default.post(name: .pinkNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        case "Teal":
            NotificationCenter.default.post(name: .tealNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        case "Yellow":
            NotificationCenter.default.post(name: .yellowNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        case "Dark Gray":
            NotificationCenter.default.post(name: .darkGrayNotifKey, object: nil, userInfo: ["color" : sender.backgroundColor!])
            UserDefaults.standard.setValue(color, forKey: "backgroundColor")
            
            view.backgroundColor = sender.backgroundColor
        default:
            print("Error")
        }
    }
    
    
}
