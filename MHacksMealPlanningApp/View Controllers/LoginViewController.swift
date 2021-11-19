//
//  RecipesViewController.swift
//  MHacksMealPlanningApp
//
//  Created by the Michigan Hanckers iOS Team on 10/27/21.
//
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: K.Colors.topGradientColor, bottomColor: K.Colors.bottomGradientColor)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        print("login pressed")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
