//
//  ViewController.swift
//  CaptureLists
//
//  Created by Rolf Fox on 2015-07-09.
//  Copyright (c) 2015 Rolf Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        myShow()
    }
    
    func myShow() {
        let ele = HtmlElement(name: "p", text: "Hello, world")
        
        let display = UIAlertController(title: "tag", message: ele.asHTML(), preferredStyle: UIAlertControllerStyle.Alert)
        
        display.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: nil))
        
        self.presentViewController(display, animated: true, completion: nil)
    }


}

