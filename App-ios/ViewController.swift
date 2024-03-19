//
//  ViewController.swift
//  App-ios
//
//  Created by Guest User on 11/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel: LoginViewModelProtocol
    
    required init?(coder aDecoder: NSCoder) {
        self.viewModel = LoginViewModel()
        super.init(coder: aDecoder)
    }
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernamTextField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var loginImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        
        titleLabel.text = "Welcome!"
        titleLabel.font = UIFont(name: "Helvetica-Bold", size: 24.0)
        loginImageView.image = UIImage(named : "Mcd")
        
        usernameLabel.text = "Username"
        usernameLabel.font = UIFont(name: "Helvetica-Bold", size: 14.0)
        usernamTextField.placeholder = "Type your Username"
        
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont(name: "Helvetica-Bold", size: 14.0)
        passwordTextfield.placeholder = "Type your Password"
        
        loginButton.setTitle("login".uppercased(), for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14.0)
        
        errorLabel.isHidden = true
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let canLogin = viewModel.login(username: usernamTextField.text, password: passwordTextfield.text)
        if canLogin{
            errorLabel.isHidden = canLogin
            let myViewController = SecondViewController()
            self.navigationController?.pushViewController(myViewController, animated: true)
        }
        else {
            errorLabel.isHidden = canLogin
        }
        
    }
    
    
}
