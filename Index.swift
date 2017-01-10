/*+----------------------------------------------------------------------
 ||
 ||  Class Index
 ||
 ||         Author:  Mario Hernandez
 ||
 ||        Purpose:  Index was written to represent a position in a maze.
 ||					 The class Index does this by having a row position,
 ||				     and a column position for every object.
 ||
 ||
 ||  Inherits From:  None.
 ||
 ||
 ||     Interfaces:  None.
 ||
 ||
 |+-----------------------------------------------------------------------
 ||
 ||      Constants:  No public constants.
 ||
 ||
 |+-----------------------------------------------------------------------
 ||
 ||   Constructors:   Index() - sets both row and column to zero.
 ||                   Index(r,c) - sets the row to r, and sets the
 ||					  column to c.
 ||
 ||  Class Methods:  setRow(int r) - sets the row to r.
 || 				 returns nothing.
 ||
 ||					 setColumn(int c) - sets the column to c.
 ||
 ||					 setHaveVisted(boolean _haveVisted) - sets haveVisted to the argument
 ||
 ||					 getRow() - returns an int of the row position of the index object.
 ||
 || 		         getColumn() - returns an int of the Column of the index object.
 ||					 getHaveVisted() - returns a boolean if I have been to the index
 ||
 ||
 ||  Inst. Methods:  int Row - This is an integer
 ||					that is supposed to represent the row
 ||					of a variable in a index.
 ||
 ||					int column - This is an integer that is supposed
 ||				    to represent an column of the variable in a index.
 ||
 ||					boolean haveVisted - this is a boolean tells me if I have visited the index
 ||
 ++-----------------------------------------------------------------------*/

import Foundation

class Index {
    fileprivate var row = Int()
    fileprivate var column = Int()
    
    init(){
        print("In the regular constructor.... Index")
        self.row = 0;
        self.column = 0
    }
    
    init(row:Int, col:Int) {
        self.row = row
        self.column = col
    }
    
    func setRow(row:Int) {
        self.row = row;
    }
    func setColumn(col: Int){
        self.column = col
    }
    
    func getRow()->Int{
        return self.row
    }
    
    func getColumn() -> Int {
        return self.column
    }
    func toString() -> String {
        return "Row: \(self.row), Column: \(self.column)"
    }
}
