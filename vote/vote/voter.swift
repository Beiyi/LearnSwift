
import UIKit

var ivoter = voter()

class voter: NSObject {
   var counterArray = [Int]()
    func addcounter(counter:Int){
        counterArray.append(counter)
    }
    func add(index:Int){
        counterArray[index]++
    }

}
