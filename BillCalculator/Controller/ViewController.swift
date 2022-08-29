//
//  ViewController.swift
//  BillCalculator
//
//  Created by Tanmay Deo on 24/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var totalBillTF: UITextField!
    var result : String?
    var splitno : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func splitSlider(_ sender: UISlider) {
        let value = String(format: "%.0f", sender.value)
        splitLabel.text = value
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let bill = totalBillTF.text
        splitno = Int(splitLabel.text!)
        if(bill != nil){
            result = String(format: "%.2f",(Float(bill!) ?? 0.0) / Float(splitno!))
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = result
            destinationVC.people = splitno
        }
    }
}

