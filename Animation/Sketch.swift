import Foundation

// Extend the Degrees data type so that we can obtain it's value in radians
extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}


class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas : Canvas
    
    // Position of circle
    var x : Degrees
    var y : Double
    var Starty : Int

    
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0.0
        y = 0.0
        Starty = 0
    }

    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        
        // Change position
        
        if canvas.frameCount <= 333 {
        for Starty in stride(from: 0, to: 600, by: 40){
        x += 0.05
        y = 85*sin(1.5*(Double(x.toRadians())))
        canvas.drawEllipse(centreX: Int(x), centreY: Starty + Int(y), width: 10, height: 10)
        canvas.drawEllipse(centreX: 500-Int(x), centreY: Starty - Int(y), width: 10, height: 10)
            }else
            {
            
                x =

        
    }
    
}
}
}
