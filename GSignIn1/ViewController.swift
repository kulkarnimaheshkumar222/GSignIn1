//
//  ViewController.swift
//  GSignIn1
//
//  Created by Mac on 26/09/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit
import GoogleSignIn
class ViewController: UIViewController,GIDSignInUIDelegate {
    
   
    
    //835189020757-j098gvbmaesj69e4t32bqi8d1rc9g507.apps.googleusercontent.com

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
    }
    
    @IBAction func signOutPressed(_ sender: UIButton) {
        print("User has Signed Out !!")
        GIDSignIn.sharedInstance().signOut()
        
        
    }
    
    
    

    // Implement these methods only if the GIDSignInUIDelegate is not a subclass of
    // UIViewController.
    
    // Stop the UIActivityIndicatorView animation that was started when the user
    // pressed the Sign In button
//    func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
//        myActivityIndicator.stopAnimating()
//    }
    
    // Present a view that prompts the user to sign in with Google
    func signIn(signIn: GIDSignIn!,
                presentViewController viewController: UIViewController!) {
        self.present(viewController, animated: true, completion: nil)
    }
    
    // Dismiss the "Sign in with Google" view
    func signIn(signIn: GIDSignIn!,
                dismissViewController viewController: UIViewController!) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

