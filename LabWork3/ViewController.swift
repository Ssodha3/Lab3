//
//  ViewController.swift
//  LabWork3
//
//  Created by user237598 on 1/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fNameTf: UITextField!
    
    
    @IBOutlet weak var lNameTf: UITextField!
    
    @IBOutlet weak var countryTf: UITextField!
    
    @IBOutlet weak var ageTf: UITextField!
    
    @IBOutlet weak var userInfoTv: UITextView!
    
    @IBOutlet weak var hiddenLb: UILabel!
    
    
    @IBAction func addBtn(_ sender: Any) {
        showInfo()
        userInfoTv.isEditable = false
        
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        statusLb()
    }
    
    
    @IBAction func clearBtn(_ sender: Any) {
        newForm()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hiddenLb.isHidden = true
        
        userInfoTv.isEditable = false
    }

    private func showInfo(){
        
        let fName = fNameTf.text ?? ""
        let lName = lNameTf.text ?? ""
        let countryName = countryTf.text ?? ""
        let userAge = ageTf.text ?? ""
        
        let userData = "First Name:\(fName)\n Last Name:\(lName)\n Country:\(countryName)\n Age:\(userAge)"
        
        userInfoTv.text = userData
        
    }
    
    private func statusLb(){
        
        let fName = fNameTf.text ?? ""
        let lName = lNameTf.text ?? ""
        let countryName = countryTf.text ?? ""
        let userAge = ageTf.text ?? ""
        
        if fName.isEmpty || lName.isEmpty || countryName.isEmpty || userAge.isEmpty {
            
            hiddenLb.text = "Complete the missing info!"
        }else{
            
            hiddenLb.text = "Successfully submitted"
            
            let userData = "First Name:\(fName)\n Last Name:\(lName)\n Country:\(countryName)\n Age:\(userAge)"
            
            userInfoTv.text = userData
            
            fNameTf.text = ""
            lNameTf.text = ""
            countryTf.text = ""
            ageTf.text = ""
        }
        
        hiddenLb.isHidden = false
        
        
    }
    
    private func newForm(){
        
        fNameTf.text = ""
        lNameTf.text = ""
        countryTf.text = ""
        ageTf.text = ""
        userInfoTv.text = ""
        
        userInfoTv.isEditable = false
        hiddenLb.isHidden = true
        
        
        
    }

}

