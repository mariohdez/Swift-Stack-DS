/*+----------------------------------------------------------------------
 ||
 ||  Class Stack
 ||
 ||         Author:  Mario Hernandez
 ||
 ||        Purpose:  The stack was written to be my ADT.
 ||					 This class has all of the regular functions
 ||				     that a stack class usually has....
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
 ||   Constructors:   Stack() - sets the private stack variable to size zero.
 ||				      sets the size equal to zero....
 ||
 ||
 ||  Class Methods:  Push(Index item) - Adds an item to the top of the stack...
 ||
 ||					 Pop() - removes an item at the top of the stack....
 ||
 ||					 Peek() - returns, but doesn't remove the item at the top of the stack...
 ||
 ||					 Size() - returns an int of how many elements are in the stack...
 ||
 || 		         toString() - prints all of the elements in the stack for debugging purposes
 ||
 ||
 ||  Inst. Methods:  	stack:[Index] - holds the stack together....
 ||
 ||					int size - holds the size of the stack...
 ||
 ||
 ||
 ++-----------------------------------------------------------------------*/

import Foundation

class Stack {
    fileprivate var stack = [Index]()
    fileprivate var size:Int
    
    init(){
        print("In the regular constructor.... Stack")
        stack = [Index]()
        size = 0
    }
    
    func push(item:Index){
        stack.insert(item, at: 0)
        size += 1
    }
    
    func pop()->Index?{
        if stack.count == 0{
            return nil;
        }
        else{
            size -= 1
            return stack.remove(at: 0)
        }
    }
    
    func peek() -> Index? {
        if stack.count == 0 {
            return nil
        }
        else{
            return stack.first
        }
    }
    
    func getSize() -> Int {
        return self.size
    }
    
    func toString() -> [String]? {
        if stack.count == 0 {
            return nil
        }
        else{
            var strArray = [String]()
            var str = String()
            
            for ind in stack{
                str = "\(ind.toString())"
                strArray.append(str)
            }
            return strArray
        }
    }
    
    
}
