//
//  ResultViewController.swift
//  BillCalculator
//
//  Created by Tanmay Deo on 24/08/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var result : String?
    var people : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = result
        splitLabel.text = "Split \(result!)rs between \(people!) people"
    }
    
    
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
