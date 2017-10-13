//
//  ViewController.swift
//  Example
//
//  Created by jesse on 2017/10/13.
//  Copyright © 2017年 jesse. All rights reserved.
//

import UIKit
import CandyAttribute

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height / 2)
        label.textAlignment = .center
        view.addSubview(label)


        label.attributedText = NSMutableAttributedString(string: "大家看法", attributes: CandyAttribute.withTextColor(.red))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

