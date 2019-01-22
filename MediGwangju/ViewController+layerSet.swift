//
//  ViewController+layerSet.swift
//  MedicalGwangju
//
//  Created by Cory Kim on 16/07/2018.
//  Copyright © 2018 sol. All rights reserved.
//

import UIKit

extension ViewController {
    func setUIShadowAndRadius() {
        getUIImageViewRound(uiViewName: homeImageView)
        getUIViewShadow(uiViewName: homeImageUIView)
        getButtonRound(buttonName: searchButton)
        getButtonRoundAndShadow(buttonName: foreignStudentButton)
        getButtonRoundAndShadow(buttonName: foreignWorkerButton)
        getButtonRoundAndShadow(buttonName: interExchangeCenterButton)
    }
    private func getButtonRound(buttonName: UIButton) {
        buttonName.layer.cornerRadius = 5
        buttonName.layer.borderWidth = 0.0/UIScreen.main.nativeScale
        buttonName.clipsToBounds = true
    }
    
    private func getButtonRoundAndShadow(buttonName: UIButton) {
        buttonName.layer.cornerRadius = 10
        buttonName.layer.borderWidth = 0.0/UIScreen.main.nativeScale
        buttonName.clipsToBounds = true
        
        buttonName.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        buttonName.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        buttonName.layer.shadowOpacity = 0.3
        buttonName.layer.shadowRadius = 3.0
        buttonName.layer.masksToBounds = false
    }
    
    private func getUIImageViewRound(uiViewName: UIImageView)
    {
        uiViewName.layer.cornerRadius = 10
        uiViewName.layer.borderWidth = 0.0/UIScreen.main.nativeScale
        uiViewName.clipsToBounds = true
    }
    
    private func getUIViewShadow(uiViewName: UIView)
    {
        uiViewName.layer.cornerRadius = 10
        uiViewName.layer.borderWidth = 0.0/UIScreen.main.nativeScale
        uiViewName.clipsToBounds = true
        
        uiViewName.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        uiViewName.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        uiViewName.layer.shadowOpacity = 0.2
        uiViewName.layer.shadowRadius = 3.0
        uiViewName.layer.masksToBounds = false
    }
}
