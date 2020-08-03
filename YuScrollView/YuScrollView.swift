//
//  YuScrollView.swift
//  YuScrollView
//  ScrollVkew
//  Created by yangyu on 2020/7/31.
//  Copyright © 2020 yangyu. All rights reserved.
//

import UIKit

class YuScrollView: UIView {
    private let panGesture = UIPanGestureRecognizer()
    private let subView = UIView()
    private var startLocation:CGPoint = CGPoint(x: 0, y: 0)
    
    public var contentSize :CGSize?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.panGesture.addTarget(self, action: #selector(pan))
        self.isUserInteractionEnabled = true
        self.subView.backgroundColor = UIColor.green
        self.subView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        self.addSubview(self.subView)

        self.addGestureRecognizer(panGesture)
        self.backgroundColor = UIColor.red
        self.layer.masksToBounds = true
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        label.textColor = UIColor.black
        label.text = "121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312121321213121213212131212132121312";
        label.numberOfLines = 0;
        self.subView.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pan(pan :UIPanGestureRecognizer){
        //ContentSize
        if pan.state == .began {
            self.startLocation = self.bounds.origin
        }
        if pan.state == .changed {
            let touchPoint :CGPoint = pan.translation(in: self)
            let newOriginX:CGFloat  = self.startLocation.x - touchPoint.x;
            let newOriginY :CGFloat = self.startLocation.y - touchPoint.y;
            let minOriginX: CGFloat = 0.0;
            let minOriginY: CGFloat = 0.0;
            let maxOriginX :CGFloat = self.contentSize!.width - self.bounds.size.width;
            let maxOriginY:CGFloat = self.contentSize!.height - self.bounds.size.height;
            var  viewBounds:CGRect = self.bounds;
            viewBounds.origin.x = fmax(minOriginX, fmin(newOriginX, maxOriginX) )
            viewBounds.origin.y = fmax(minOriginY, fmin(newOriginY, maxOriginY))
            self.bounds = viewBounds;
            print(self.bounds)
        }
        
    }
  
}



