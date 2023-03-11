//
//  ViewController.swift
//  tAbleView
//
//  Created by IPS-149 on 10/03/23.
//

import UIKit

enum numOfCell {
    case textView
    case button
    
    var tableData : (cellId : String , height : CGFloat){
    switch self  {
    case .textView:
        return (cellId : "DetailTableViewCell" , height : UITableView.automaticDimension )
    case .button:
        return (cellId : "DetailBtnTableViewCell" , height : UITableView.automaticDimension )
    }
    }
}

class ViewController: UIViewController{
   
    

    //MARK: -- VAriable
    var arrsec: [numOfCell] = []
    var tirle = ["NAME","SURNAME","CITY", "ADDRESS" ,"PINCODE" ]
    var placeHolder = ["Enter Youe Name","Enter Your Surname", "Enter your City", "Enter Your Address", "Enter Your Pin"]
    
    //MARK: -- IBOutLet
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCEll()
        updateUI()
        //tblView.isEditing = true
    }
    func registerCEll(){
        tblView.register(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: "DetailTableViewCell")
        tblView.register(UINib(nibName: "DetailBtnTableViewCell", bundle: nil), forCellReuseIdentifier: "DetailBtnTableViewCell")
    }
    func updateUI() {
        arrsec = [.textView,.button]

    }
}

extension ViewController : UITableViewDelegate , UITableViewDataSource  , YourCellDelegate  {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrsec.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch arrsec[section]{
        case .textView:
            return tirle.count
        case .button:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch arrsec[indexPath.section] {
        case .textView:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
            cell.lblTitle.text = tirle[indexPath.row]
            cell.txtField.placeholder = placeHolder[indexPath.row]
            
            return cell
        case .textView:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
            cell.lblTitle.text = tirle[indexPath.row]
            cell.txtField.placeholder = placeHolder[indexPath.row]
            
            return cell
        case .textView:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
            cell.lblTitle.text = tirle[indexPath.row]
            cell.txtField.placeholder = placeHolder[indexPath.row]
            
            return cell
        case .textView:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
            cell.lblTitle.text = tirle[indexPath.row]
            cell.txtField.placeholder = placeHolder[indexPath.row]
            
            return cell
        case .textView:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
            cell.lblTitle.text = tirle[indexPath.row]
            cell.txtField.placeholder = placeHolder[indexPath.row]
            
            return cell
        case .button:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailBtnTableViewCell", for: indexPath) as! DetailBtnTableViewCell
            cell.cellDelegate = self
            cell.btnSubmit.tag = indexPath.row
            return cell
            
        default:
            return UITableViewCell()
            
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 4 {
            return 40
        }else {
            return 25
        }
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func didPressButton(_ tag: Int) {
         print("I have pressed a button with a tag: \(tag)")
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return true if the row should be movable, false otherwise
        return true
    }


    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // Update your data model to reflect the new order
    }
    func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        // Return the index path where the row should be moved to
        return proposedDestinationIndexPath
    }

}
