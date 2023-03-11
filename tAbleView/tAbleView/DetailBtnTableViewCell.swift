//
//  DetailBtnTableViewCell.swift
//  tAbleView
//
//  Created by IPS-149 on 10/03/23.
//

import UIKit
protocol YourCellDelegate : class {
    func didPressButton(_ tag: Int)
}
class DetailBtnTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnSubmit: UIButton!
    var cellDelegate: YourCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBAction func btnSubMit(_ sender: UIButton) {
        cellDelegate?.didPressButton(sender.tag)
    }
    
}
