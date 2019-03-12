//  BabyViewController.swift
//  TestBaby
//  Created by Terrance McHugh on 3/11/19
//  Copyright © 2019 Terrance McHugh. All rights reserved.

//Using protocols and delegates in xcode and swift is - to me (and I consider myself to be relatively smart) - a very confusing concept to try to understand, let alone master. Most textual tutorials or videos left me more confused than before I began. This app is a bare-bones template that tries to demonstrate the procedure.

//Protocols and delegates are often used to pass information from one class back to the class that called it. For example, Class A presents class B and then class B uses this methodology to pass information back to class A. In this example, the BabyViewControlled (Class A) asks the MomViewController (Class B) for some information ("food"). Class B then passes the information back to Class A. Therefore, start by reviewing the code in the MomViewController that starts with "1.". Next come back to the BabyViewConctoller to continue the logical sequence. The code used here is an amalgamation of concepts derived from "Bob the Developer," Sean Allen, and James Rochabrun.


import UIKit


//4. The delegate ("employee") - this class - promises to do all the required tasks the delegator ("boss") gave it when it signs up for the protocol ("contract") by adding "CookingDelegate" after "UIviewController" as seen in the class line just below.

class BabyViewController: UIViewController, CookingDelegate {

    @IBOutlet weak var babyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! MomViewController
        
        //5. The "employee" class accepts responsibility that it will do the necessary tasks by establishing a link to the boss class's delegate property (i.e., "he and the boss shake hands on the contract").
        vc.delegate = self
    }
    
    //6. The delegate class fulfills its responsibility by performing the contract's required task, the method in the protocol.
    func makingFood(info: String, imageName: String) {
        babyLabel.text = info
        imageView.image = UIImage(named: imageName)
    }

    @IBAction func feedMeTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        babyLabel.text = "I'm crying. I'm hungry!"
        imageView.image = UIImage(named: "HungryBaby")
    }
}//End of BabyViewController
