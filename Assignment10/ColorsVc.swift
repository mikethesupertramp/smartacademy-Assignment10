//
//  ColorsVc.swift
//  Assignment10
//
//  Created by macbook  on 01.06.23.
//

import UIKit

class ColorsVc: UIViewController {
    
    var setButtonColor: ((UIColor) -> ())?
    var setBackgroundColor: ((UIColor) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setBackgroundColor(_ sender: UIButton) {
        setBackgroundColor?(sender.backgroundColor ?? .black)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func setButtonColor(_ sender: UIButton) {
        setButtonColor?(sender.backgroundColor ?? .black)
        navigationController?.popViewController(animated: true)
    }
}
