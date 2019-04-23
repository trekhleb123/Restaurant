//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Alona Trekhlib on 4/22/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your estimated wait time is \(minutes!) minutes."
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
