//  MomViewController.swift
//  TestBaby
//  Created by Terrance McHugh on 3/11/19
//  Copyright © 2019 Terrance McHugh. All rights reserved.

import UIKit

//1. Make a protocol and set it as a subclass of "class." This protocol in a "contract" that must be accepted by any class that signs up to follow it.

protocol CookingDelegate: class {
    
    func makingFood(info: String, imageName: String)
}



//This is the delegator ("boss") class. It gives instructions to its delegate ("employee") class

class MomViewController: UIViewController {
    
    //2. Make a delegate property (and make sure it is "weak")
    weak var delegate: CookingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Mom VC"
        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func foodReadyTapped(_ sender: UIButton) {
        
        //3. Send information to the delegate that it needs to complete its delegated task:
        
        delegate!.makingFood(info: "Here's your bottle!",
                             imageName: "MomFeedingBaby")
        
        self.navigationController?.popViewController(animated: true)
    }
    
}//End of MomViewController


