//
//  ViewController.swift
//  Assignment10
//
//  Created by macbook  on 01.06.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseColor(_ sender: Any) {
        let view = storyboard?.instantiateViewController(withIdentifier: "ColorsVc") as? ColorsVc
        if let view {
            view.setBackgroundColor = { self.view.backgroundColor = $0 }
            view.setButtonColor = { self.button.backgroundColor = $0}
            navigationController?.pushViewController(view, animated: true)
        }

    }
    
}

