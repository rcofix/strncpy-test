//
//  HtmlElement.swift
//  CaptureLists
//
//  Created by Rolf Fox on 2015-07-09.
//  Copyright (c) 2015 Rolf Fox. All rights reserved.
//

import UIKit

class HtmlElement: NSObject {
   
    let name: String
    let text: String?
    
    lazy var asHTML: Void -> String = {
        
        [unowned self] in
        
        if let text = self.text {
            return "<\(self.name)>\(self.text)</\(self.name)>"
            
        }
        else {
            return "<\(self.name)/>"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deintialized", terminator: "")
    }
}
