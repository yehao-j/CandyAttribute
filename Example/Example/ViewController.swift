//
//  ViewController.swift
//  Example
//
//  Created by jesse on 2017/10/13.
//  Copyright © 2017年 jesse. All rights reserved.
//

import UIKit
import CandyAttribute
import SwiftyAttributes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        view.addSubview(label)

//        label.attributedText = NSAttributedString(string: "减肥开始大家反馈剑荡四方卡视角开始大家疯狂的教辅时代峻峰看撒娇的罚款", attributes: CandyAttribute.withLineSpacing(50))
        label.attributedText = "减肥开始大家反馈剑荡四方卡视角开始大家疯狂的教辅时代峻峰看撒娇的罚款".withFont(UIFont.systemFont(ofSize: 36)).withLineSpacing(50).withTextColor(UIColor.red)
    }
}

