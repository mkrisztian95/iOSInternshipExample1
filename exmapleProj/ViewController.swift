//
//  ViewController.swift
//  exmapleProj
//
//  Created by Azinec Development on 2/10/17.
//  Copyright © 2017 Azinec Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var firstNumberLabel: UILabel!
  @IBOutlet weak var firstContainer: UIView!
  @IBOutlet weak var thirdContainer: UIView!
  @IBOutlet weak var secondContainer: UIView!
  @IBOutlet weak var firstNumber: UIView!
  
  @IBOutlet weak var emailIconContainer: UIView!
  @IBOutlet weak var passIconContainer: UIView!
  @IBOutlet weak var userNameIconContainer: UIView!
  @IBOutlet weak var againIconContainer: UIView!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var paassTextField: UITextField!
  @IBOutlet weak var againTextField: UITextField!
  @IBOutlet weak var userNameTextField: UITextField!
  
  @IBOutlet weak var backButton: UIButton!
  @IBOutlet weak var continueButton: UIButton!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    self.firstContainer.layer.cornerRadius = self.firstContainer.frame.size.width / 2
    self.firstNumber.layer.cornerRadius = self.firstNumber.frame.size.width / 2
    self.secondContainer.layer.cornerRadius = self.secondContainer.frame.size.width / 2
    self.thirdContainer.layer.cornerRadius = self.thirdContainer.frame.size.width / 2
    
    self.thirdContainer.layer.masksToBounds = true
    self.secondContainer.layer.masksToBounds = true
    self.firstContainer.layer.masksToBounds = true
    
    self.emailIconContainer.layer.cornerRadius = 5
    self.passIconContainer.layer.cornerRadius = 5
    self.userNameIconContainer.layer.cornerRadius = 5
    self.againIconContainer.layer.cornerRadius = 5
    self.paassTextField.layer.cornerRadius = 5
    self.againTextField.layer.cornerRadius = 5
    self.userNameTextField.layer.cornerRadius = 5
    self.emailTextField.layer.cornerRadius = 5
    
    self.backButton.layer.cornerRadius = 5
    self.continueButton.layer.cornerRadius = 5
    
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func tapAction(_ sender: Any) {
  
    emailTextField.resignFirstResponder()
    paassTextField.resignFirstResponder()
    againTextField.resignFirstResponder()
    userNameTextField.resignFirstResponder()
  
  }

}

