//
//  ViewController.swift
//  NKLoadingView
//
//  Created by Nikesh Jha on 9/14/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var loading: NKLoadingView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading = NKLoadingView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func startEndAnimation(_ sender: Any) {
        if !loading!.isVisible {
            loading?.startAnimating(message: "Please Wait....")
            (sender as! UIButton).setTitle("Stop Animation", for: .normal)
        }else{
            loading?.stopAnimating()
            (sender as! UIButton).setTitle("Start Animation", for: .normal)
        }
    }
    
}

