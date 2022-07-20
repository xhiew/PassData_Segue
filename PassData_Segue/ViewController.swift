//
//  ViewController.swift
//  PassData_Segue
//
//  Created by ADMIN on 20/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageGanger: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToView2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToView2" {
            let destination = segue.destination as! ViewController2
            destination.image = imageGanger.image
        }
    }
}

