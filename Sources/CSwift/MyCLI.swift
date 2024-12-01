import CSupport
import Foundation

@main
struct MyCLI {
    static func main() {
        let start = UnsafeMutablePointer<CInt>.allocate(capacity: 4)
        
        start.initialize(to: 0)
        (start + 1).initialize(to: 2)
        (start + 2).initialize(to: 4)
        (start + 3).initialize(to: 6)
        
        let value = sum_and_free(start, 4)
        
        print("Sum of the values is: \(value)")
    }
}
