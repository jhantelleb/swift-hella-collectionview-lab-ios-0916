//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Jhantelle Belleza on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
  
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet var hellaDetailView: UIView!

    var number: Int = 0
    var bgColor = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indexLabel.text = String(number)
        hellaDetailView.backgroundColor = bgColor
        // Do any additional setup after loading the view.
    }
    
    
    

}
