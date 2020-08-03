//
//  ViewController.swift
//  YuScrollView
//
//  Created by yangyu on 2020/7/31.
//  Copyright © 2020 yangyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scroll = YuScrollView(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
        scroll.contentSize = CGSize(width:1000, height: 1000)
        self.view.addSubview(scroll)
    }
    

}

