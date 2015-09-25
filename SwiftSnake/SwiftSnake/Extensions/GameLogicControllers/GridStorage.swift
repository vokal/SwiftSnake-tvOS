//
//  GridStorage.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation

/**
 *  A place to store all information that's going to be displayed on the grid.
 *  Inspired by Mathijis Hollemans' "This is totally not Candy Crush" tutorial: 
 *  http://www.raywenderlich.com/75270/make-game-like-candy-crush-with-swift-tutorial-part-1
 */
struct GridStorage<T> {
    private let columns: Int
    private let rows: Int
    private var storageArray: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        storageArray = Array<T?>(count:GridStorage.totalObjectCount(rows, columns),
            repeatedValue: nil)
    }
    
    private static func totalObjectCount(rows: Int, _ columns: Int) -> Int {
        return rows * columns
    }
    
    private func indexForBeginningOfRow(row: Int) -> Int {
        return row * self.columns
    }
    
    private func indexForRowAndColumn(row: Int, _ column: Int) -> Int {
        return indexForBeginningOfRow(row) + column
    }
    
    /**
     Subscript operator which handles a tuple. 
     
     To use, create your GridStorage variable then call `variableName[column, row]`
     
     - parameter column: The column you wish to access
     - parameter row:    The row you wish to access
     
     - returns: An optional of whatever type this struct is using
     */
    subscript(column: Int, row: Int) -> T? {
        get {
            return storageArray[indexForRowAndColumn(row, column)]
        }
        set {
            storageArray[indexForRowAndColumn(row, column)] = newValue
        }
    }
}
