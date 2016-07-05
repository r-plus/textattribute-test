//
//  ViewController.swift
//  textattributes-test
//
//  Created by hyde on 2016/07/05.
//  Copyright © 2016年 r-plus. All rights reserved.
//

import UIKit
import TextAttributes

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textAttributesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Native way
        let attributedString = NSMutableAttributedString(string: label.text!)
        let len = label.text!.characters.count
        attributedString.addAttribute(NSBaselineOffsetAttributeName, value: 8, range: NSRange(location: 0, length: len))
        label.attributedText = attributedString
        
        // TextAttributes way
        let attributedString2 = NSMutableAttributedString(string: textAttributesLabel.text!)
        let attrs = TextAttributes().baselineOffset(8)
        let len2 = textAttributesLabel.text!.characters.count
        attributedString2.addAttributes(attrs, range: NSRange(location: 0, length: len2))
        textAttributesLabel.attributedText = attributedString2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

