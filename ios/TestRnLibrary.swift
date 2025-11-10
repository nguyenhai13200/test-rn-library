import Foundation
import TestFramework

@objcMembers
public class NativeTest: NSObject {
    public func sayHello() -> String {
        return "Hello from native Swift!"
    }
  
    public func addNumbers() -> Int {
        let tf = TestFramework()
        return tf.add(3, 5)
    }
  
}
