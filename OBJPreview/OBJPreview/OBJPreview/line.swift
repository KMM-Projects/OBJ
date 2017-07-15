//
//  line.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 2/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import UIKit

class Line {
    private var _start: CGPoint!
    private var _end: CGPoint!
    
    
    var start: CGPoint {
        get {
            return _start
        }
        set {
            _start = newValue
        }
    }
    
    var end: CGPoint {
        get {
            return _end
        }
        set {
            _end = newValue
        }
    
    }
    
    //constructor
    init(start: CGPoint, end: CGPoint) {
        self._start = start
        self._end = end
    }


}
