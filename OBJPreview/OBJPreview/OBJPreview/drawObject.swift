//
//  Object.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 2/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import Foundation


class DrawObject {

    var arrayOfFaces = [Faces]() //array of faces
    var vertexArray = [Vertex]() //array of vertices
    var _number : Int!


    init(number: Int){
        self._number = number
//        let vertex = Vertex(x_axis: 0.0,y_axis: 0.0, z_axis: 0.0, w_optional: 0.0, v_id: 0)
//        let face = Faces(order: 1)
//        face.arrayOfVertex.append(vertex)
//        self.arrayOfFaces.append(face) //init the arrays
    }
    
    func loadFile(){
    //load file
    //parse strings
       
        if let path = Bundle.main.path(forResource: "cylinder", ofType: "obj"){
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let linesString = data.components(separatedBy: .newlines) //separate lines by new line
                
                for lineString in linesString { //read by line
                    var correctLine = deleteReduntantSpacers(line: lineString) // delete reduntant " " and endLn
                    var doubleArray = [Double]()
                    var integerArray = [Int]()
                    var count:Int = 0 //represent the order of faces
                    //let charAtIndex = correctLine[correctLine.index(correctLine.startIndex, offsetBy: 2)]
                    //start vertex load
                    if correctLine.hasPrefix("v")  {
                        print(correctLine)
                        //delete "v" and extra " " from begining
                        correctLine.remove(at: correctLine.startIndex)
                        correctLine.remove(at: correctLine.startIndex)
                        // convert string coordinates to array of double
                        var stringCoordinateArray = correctLine.components(separatedBy: " ")
                        let maxIndex = stringCoordinateArray.count
                        for index in 0..<maxIndex {
                            doubleArray.append(Double(stringCoordinateArray[index])!)
                          
                        }
                            // array of number convert to array of vertecies
                        vertexArray.append(Vertex(x_axis: doubleArray[0],y_axis: doubleArray[1], z_axis: doubleArray[2], w_optional: 0.0, v_id:vertexArray.count))
                        print(vertexArray[vertexArray.count-1].getInfo())
                        doubleArray.removeAll()
                        //
                        
                    } //end vertex load
                      //start face load
                    if correctLine.hasPrefix("f") {
                     // delet "f" and extra " " form begining
                        correctLine.remove(at: correctLine.startIndex)
                        correctLine.remove(at: correctLine.startIndex)
                    // convert vertex list to faces array
                        var stringVertexList = correctLine.components(separatedBy: " ")
                        let maxIndex = stringVertexList.count
                        for index in 0..<maxIndex {
                            integerArray.append(Int(stringVertexList[index])!)
                        }
                        let newFace = Faces(order: count)
                        for index in 1..<maxIndex {
                            newFace.addVertex(vertex: vertexArray[integerArray[index]])
                        }
                        count += 1
                        arrayOfFaces.append(newFace)
                    }
   }
//                print(vertexArray)
//                print(arrayOfFaces)
//                print(vertexArray.count)
//                print(arrayOfFaces.count)
                
                
                
            }
            catch{
                print(error)
            }
        }
            }
}
