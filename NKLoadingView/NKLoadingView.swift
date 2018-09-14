//
//  NKLoadingView.swift
//  NKLoadingView
//
//  Created by Nikesh Jha on 9/14/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import UIKit

class NKLoadingView: UIView {
    
    let width: CGFloat = 150
    let height: CGFloat = 60
    let cornerRadius: CGFloat = 15
    let spacing: CGFloat = 20
    var label = UILabel()
    var fontSize: CGFloat = 20
    var isVisible: Bool = false
    
    
    override init(frame: CGRect) {
        let window = UIApplication.shared.keyWindow!
        let viewFrame = CGRect(x: 50, y: window.frame.height / 2 - height / 2, width: window.frame.width - 2 * 50, height: height)
        super.init(frame: viewFrame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
        self.layer.backgroundColor = UIColor.black.withAlphaComponent(0.65).cgColor
        let spinner = UIActivityIndicatorView(activityIndicatorStyle: .white)
        spinner.startAnimating()
        spinner.frame = CGRect(x: CGFloat(20), y: CGFloat(10), width: 40, height: 40)
        
        label = UILabel(frame: CGRect(x: spinner.frame.origin.x + spinner.frame.width + spacing, y:  spinner.frame.origin.y, width: self.frame.width - spacing - spinner.frame.width - 20, height: spinner.frame.height))
        label.text  = "Please Wait..."
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: fontSize)
        
        self.addSubview(spinner)
        self.addSubview(label)
    }
    
    func stopAnimating(){
        isVisible = !isVisible
        self.removeFromSuperview()
    }
    
    func startAnimating(message: String){
        label.text = message
        isVisible = !isVisible
        UIApplication.shared.keyWindow!.addSubview(self);
        
    }
}
