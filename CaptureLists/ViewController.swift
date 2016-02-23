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
        
        let key1 = "FirstKey"
        let key2 = "FirstKey"
        
        var dict: [String: NSNumber] = [:]
        
        dict[key1] = NSNumber(double: 12.21)
        dict[key2] = NSNumber(double: 1.14)
        dict[key2] = NSNumber(double: 3.14159)
        
        print("\(dump(dict))")
    }


}

