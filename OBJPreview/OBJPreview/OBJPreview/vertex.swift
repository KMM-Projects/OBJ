//
//  Vertex.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 1/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import Foundation

class Vertex {
 //axises
    private var _x: Double!
    private var _y: Double!
    private var _z: Double!
    private var _w: Double!
    
    var x: Double { // Float! dont garante the Float
        get {
            return _x
        }
        set {
            _x = newValue
        }
    }
    
    var y: Double {
        get {
            return _y
        }
        set {
            _y = newValue
        }
    }
    var z: Double {
        get {
            return _z
        }
        set {
            _z = newValue
        }
    }
    var w: Double {
        get {
            return _w
        }
        set {
            _w = newValue
        }
    }
    
    
    //constructor
    
    init(x_axis: Double,y_axis: Double, z_axis:Double, w_optional: Double){
        self._x = x_axis * 100.00
        self._y = y_axis * 100.00
        self._z = z_axis * 100.00
        self._w = w_optional
    }

}
