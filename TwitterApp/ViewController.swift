//
//  ViewController.swift
//  TwitterApp
//
//  Created by Chhaya Tiwari on 10/7/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var screenName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        

    }

    @IBAction func loginTwitter(_ sender: Any) {
        TWTRTwitter.sharedInstance().logIn { (session, error) in
            if session != nil {
                if let userId = session?.userID {
                    let client = TWTRAPIClient(userID: userId)
                    client.loadUser(withID: userId, completion: { (user, error) in
                        if error == nil {
                            self.userName.text = user?.name
                            self.screenName.text = user?.screenName
                            print(user?.name, user?.screenName, user?.profileImageLargeURL)
                            let image = 
                        }
                    })
                    
                }
            }
        }
    }
    
}

