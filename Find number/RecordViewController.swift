//
//  RecordViewController.swift
//  Find number
//
//  Created by Roza Sharkhmullina on 12/16/22.
//

import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let record = UserDefaults.standard.integer(forKey: KeysUserDefaults.recordGame)
        if record != 0 {
            recordLabel.text = "The best result is \(record) seconds!"
        } else {
            recordLabel.text = "No record set :("
        }
    }
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
