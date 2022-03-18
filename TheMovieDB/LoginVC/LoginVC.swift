//
//  LoginVC.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 18.03.2022.
//

import UIKit

class LoginVC: UIViewController {
   
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    let userDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        userTextField.text = userDefaults.string(forKey: "user")
        passwordTextField.text = userDefaults.string(forKey: "password")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func loginButton(_ sender: Any) {
        
        if userTextField.text == "" {
            showAlert(message: "Lütfen isminizi girin!")
        }
        else if passwordTextField.text == "" {
            showAlert(message: "Lütfen masa numarasını girin!")
        }
        else {
            
            userDefaults.set(userTextField.text, forKey: "user")
            userDefaults.set(passwordTextField.text, forKey: "password")
            
            self.performSegue(withIdentifier: "loginToMovie", sender: self)
        }
    }
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: "Hata!", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let moviess = segue.destination as! HomeVC

        let login = sender as? LoginVC
    }
    

    

}
