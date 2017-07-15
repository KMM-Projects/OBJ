//
//  Faces.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 2/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import Foundation


class Faces {
  
    private var _order: Int!
    private var _arrayOfVertex = [Vertex]() // vertex array
    
    
    var order: Int {
        get {
            return _order
        }
        set {
            _order = newValue
        }
    }
    
    var arrayOfVertex: [Vertex] {
        get {
            return self._arrayOfVertex
        }
        set {
            self._arrayOfVertex = newValue
        }
    }
    
    // constructor
    init(order: Int){
        self._order = order
    }
    // add vertex in array
    func addVertex(vertex: Vertex){
        arrayOfVertex.append(vertex)
    }

}
