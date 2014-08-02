// Playground - how to implement Hashable and Equatable

import UIKit

//MARK: - Equatable
func ==(lhs: Bit, rhs: Bit) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

class Bit : Hashable {
    
    var point : CGPoint
    
    //MARK: - Hashable
    var hashValue : Int {
    get {
        return "\(self.point.x),\(self.point.y)".hashValue
    }
    }
    
    //MARK: - Bit
    init(point: CGPoint) {
        self.point = point  // div BIT_SIZE to normalize it
    }
    
}

var point_a_1_0 = Bit(point: CGPoint(x: 1, y: 0))
var point_b_1_0 = Bit(point: CGPoint(x: 1, y: 0))
var point_c_0_1 = Bit(point: CGPoint(x: 0, y: 1))

point_a_1_0 == point_b_1_0
point_a_1_0 == point_c_0_1
