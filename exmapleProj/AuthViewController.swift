//
//  AuthViewController.swift
//  exmapleProj
//
//  Created by Azinec Development on 2/15/17.
//  Copyright © 2017 Azinec Development. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
  
  var passWordLabel:UILabel! = nil
  var userNameLabel:UILabel! = nil
  
  var passwordTextField:UITextField! = nil
  var userNameTextField:UITextField! = nil
  
  var containerView:UIView! = nil
  
  @IBOutlet weak var wellcomeLabel: UILabel!
  @IBOutlet weak var mainContainer: UIView!
  
  @IBOutlet weak var buttonsView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    // ++ creating new container view
    let x:CGFloat = 15.0
    let y:CGFloat = self.wellcomeLabel.frame.origin.y + self.wellcomeLabel.frame.size.height + 20.0
    let width:CGFloat = self.view.frame.size.width - 30.0
    let height:CGFloat = self.buttonsView.frame.origin.y - 15.0 - y
    
    self.containerView = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
    self.containerView.backgroundColor = UIColor.clear
    self.containerView.isHidden = true
    self.mainContainer.addSubview(self.containerView)
    // -- end
    
    // creating user name label
  
    let usernameLabelx:CGFloat = 0.0
    let usernameLabely:CGFloat = 0.0
    let usernameLabelheight:CGFloat = 20.0
    let usernameLabelwidth:CGFloat = self.containerView.frame.width
    
    self.userNameLabel = UILabel(frame: CGRect(x: usernameLabelx, y: usernameLabely, width: usernameLabelwidth, height: usernameLabelheight))
    
    self.userNameLabel.text = "User name"
    self.userNameLabel.textColor = .white
    self.userNameLabel.textAlignment = .center
    
    self.containerView.addSubview(self.userNameLabel)
    // -- end
    
    
    let passwordLabelx:CGFloat = 0.0
    let passwordLabely:CGFloat = 70.0
    let passwordLabelheight:CGFloat = 20.0
    let passwordLabelwidth:CGFloat = self.containerView.frame.width
    
    self.passWordLabel = UILabel(frame: CGRect(x: passwordLabelx, y: passwordLabely, width: passwordLabelwidth, height: passwordLabelheight))
    
    self.passWordLabel.text = "Password"
    self.passWordLabel.textColor = .white
    self.passWordLabel.textAlignment = .center
    
    self.containerView.addSubview(self.passWordLabel)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
   
  }
  
  @IBOutlet weak var showLoginView: UIButton!
  
  @IBAction func showLoginViewAction(_ sender: Any) {
    self.containerView.isHidden = !self.containerView.isHidden
    
  }
  
  
}
