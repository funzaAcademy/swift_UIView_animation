//
//  ViewController.swift
//  Animation_2
//
//  Created by Sanjay Noronha on 2015/09/20.
//  Copyright © 2015 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
       
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
        super.viewDidLayoutSubviews()
         //myImageView.center.x = myImageView.center.x  - self.view.frame.width
        myImageView.frame = CGRect(x: 20, y: 20, width: 0, height: 0)
        
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        print("viewDidAppear")
       
       
        UIView.animateWithDuration(duration: NSTimeInterval, delay: <#T##NSTimeInterval#>, options: <#T##UIViewAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        
        UIView.animateWithDuration(2, delay: 1, options: [.Repeat,.Autoreverse], animations: { () -> Void in
            self.myImageView.frame = CGRect(x: 20, y: 20, width: 200, height: 200)
            }) { (_) -> Void in
                print("Completion")
        }
 
        
    }

    
}

