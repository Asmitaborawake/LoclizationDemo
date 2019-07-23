//
//  ViewController.swift
//  LocliseDemo
//
//  Created by User on 23/07/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var fname: UILabel!
    
    @IBOutlet weak var lname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func segmentClick(_ sender: Any) {
        
        if segment.selectedSegmentIndex == 0 {
        
            laungchange(strLan: "en")
        }else {
            laungchange(strLan: "es")
        }
    }
    
    func laungchange(strLan: String) {
        fname.text = "FirstNameKey".localisableString(loc: strLan)
        lname.text = "LastNameKey".localisableString(loc: strLan)
    }
    
}


extension String {
    func localisableString(loc: String) -> String {
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
