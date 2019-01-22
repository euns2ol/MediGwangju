//
//  LaunchScreenViewController.swift
//  MedicalGwangju
//
//  Created by Cory Kim on 23/07/2018.
//  Copyright © 2018 sol. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    @IBOutlet weak var globalIcon: UIImageView!
    @IBOutlet weak var name: UIImageView!
    @IBOutlet weak var marker: UIImageView!
    @IBOutlet weak var globalIconMultiplier: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        globalIconMultiplier.changeMultiplier(valueOfMultiplier: 3)
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        globalIconMultiplier.changeMultiplier(valueOfMultiplier: 2.13)
        UIView.animate(withDuration: 0.5) {
            self.loadViewIfNeeded()
        }
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
//            self.globalIconMultiplier.changeMultiplier(valueOfMultiplier: 2.13)
//        }) { (_) in
//
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NSLayoutConstraint
{
    func changeMultiplier(valueOfMultiplier: CGFloat)
    {
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: valueOfMultiplier, constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
    }
}
