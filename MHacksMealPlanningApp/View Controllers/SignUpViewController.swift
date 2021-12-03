//
//  SignUpViewController.swift
//  MHacksMealPlanningApp
//
//  Created by Thomas Smith on 10/28/21.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    @IBOutlet weak var nametxtfield: UITextField!
    @IBOutlet weak var emailtxtfield: UITextField!
    @IBOutlet weak var passwordtxtfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    @IBAction func signupbuttonpressed(_ sender: Any) {
        if let email = emailtxtfield.text, let password = passwordtxtfield.text, let name = nametxtfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in guard let strongSelf = self else { return }
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
                guard let uid = authResult?.user.uid else { return }
                let values = ["email": email, "name": name]
                Database.database().reference().child("Users").child(uid).updateChildValues(values) { (error, reference) in
                    if let err = error {
                        print(err.localizedDescription)
                        return
                    }
                }
                
                print("Successfully Signed Up")
                self?.performSegue(withIdentifier: K.Segues.SignUpSegueID, sender: self)
            }
        }
    }
    
}
