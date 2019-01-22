//
//  informationController.swift
//  MedicalGwangju
//
//  Created by 조은솔 on 2018. 7. 25..
//  Copyright © 2018년 sol. All rights reserved.
//

import UIKit
import MessageUI

class informationController: UIViewController, UITableViewDelegate, UITableViewDataSource, MFMailComposeViewControllerDelegate  {
    
    var myItem: Array<String>?
    var mySubItem: Array<String>?
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var medi_image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myItem = ["E-mail","Blog","Developer",""]
        mySubItem = ["developer.goldmedal@gmail.com","http://medigwangju.tistory.com","Doungjun Kim", "Eunsol Cho"]
        
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: myTableView.frame.size.width, height: 0))
        
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.tableFooterView = footerView
        self.myTableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func viewDidLayoutSubviews() {
        medi_image.layer.cornerRadius = 10
        medi_image.layer.borderWidth = 0.0/UIScreen.main.nativeScale
        medi_image.clipsToBounds = true
        
        medi_image.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        medi_image.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        medi_image.layer.shadowOpacity = 0.2
        medi_image.layer.shadowRadius = 3.0
        medi_image.layer.masksToBounds = false
    }
    
    func EmailSend(){
        
        let mailVC = MFMailComposeViewController()
        mailVC.mailComposeDelegate = self
        mailVC.setToRecipients(["developer.goldmedal@gmail.com"])
        mailVC.setSubject("")
        mailVC.setMessageBody("Please let me know the inconvenience or improvement", isHTML: false)
      
       
        if MFMailComposeViewController.canSendMail(){
            self.present(mailVC, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //이메일 연결
        if (indexPath.row == 0){
            EmailSend()
        }
        //블로그 연결
        else if (indexPath.row == 1 ){
            //
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItem!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! infoCustomCell
        cell.backgroundColor = UIColor.clear
        cell.selectionStyle = .none
        cell.label1.text! =  myItem![indexPath.row]
        cell.label2.text! = mySubItem![indexPath.row]
        return cell
    }
}
