//
//  ColorManager.swift
//  test_ChangeVCColorUsingNotifObservers
//
//  Created by Jervy Umandap on 8/12/21.
//

import Foundation

class ColorManager {
    static let shared = ColorManager()
    
    let savedColor = UserDefaults.standard.value(forKey: "backGroundColor") as! String
    
    func getSavedColor(data: String) {
    }
    
}



