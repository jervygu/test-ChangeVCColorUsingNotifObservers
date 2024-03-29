//
//  ViewController.swift
//  test_ChangeVCColorUsingNotifObservers
//
//  Created by Jervy Umandap on 8/10/21.
//

import UIKit

class InitialVC: UIViewController {
    
//    public static let shared = InitialVC()
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First VC"
        
        getSavedColor()
        createObservers()
        
        // userDefaults path
        let path: [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        let folder: String = path[0] as! String
        print("Your NSUserDefaults are stored in this folder: %@/Preferences: \(folder)")
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
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .greenNotifKey, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .purpleNotifKey, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .pinkNotifKey, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .tealNotifKey, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .yellowNotifKey, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackground(_:)), name: .darkGrayNotifKey, object: nil)
    }
    
    @objc func updateBackground(_ notification: NSNotification) {
        let color = notification.name
        view.backgroundColor = notification.userInfo?["color"] as? UIColor
        print(color.rawValue)
    }
    
}

