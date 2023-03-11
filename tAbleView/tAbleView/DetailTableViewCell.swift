//
//  DetailTableViewCell.swift
//  tAbleView
//
//  Created by IPS-149 on 10/03/23.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    
    
    //MARK: IBOutlet
   
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
