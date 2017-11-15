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

        label.attributedText = "验证码将发送到" + "1433333333333".withTextColor(UIColor.red) + "，请确认此号码为你本人的手机号。"
    }
}

