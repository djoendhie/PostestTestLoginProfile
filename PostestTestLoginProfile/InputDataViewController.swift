//
//  EnterViewController.swift
//  PostestTestLoginProfile
//
//  Created by SMK IDN MI on 10/23/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class InputDataViewController: UIViewController {
   
    @IBOutlet weak var etName: UITextField!
    @IBOutlet weak var etPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnLog(_ sender: Any) {
        if (etName.text == "") && (etPass.text == "") {
            let alertController = UIAlertController(title: "Warning",
                                                    message: "The Column can't be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        } else if (etName.text == "rpl2idn") && (etPass.text == "kitabisa") {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "checkData"){
                    let sendData = segue.destination as! InputProfileViewController
                }
            }
            
        }else{
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Your Username and Profile is Wrong", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */


