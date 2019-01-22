//
//  infoCustomCell.swift
//  MedicalGwangju
//
//  Created by 조은솔 on 2018. 7. 25..
//  Copyright © 2018년 sol. All rights reserved.
//

import UIKit

class infoCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    //여기 제일먼저 호출
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
