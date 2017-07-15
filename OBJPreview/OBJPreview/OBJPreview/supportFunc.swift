//
//  File.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 10/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import Foundation

//delete reduntant spacer 
// input "v    -1.496645            0.027290           1.354413"
//output "v -1.496645 0.027290 1.354413"

func deleteReduntantSpacers(line: String) -> String {
    let components = line.components(separatedBy: NSCharacterSet.whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}
