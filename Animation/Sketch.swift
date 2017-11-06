import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    var k : Double
    
    // This function runs once
    override init() {
        
        //Starting positions
        x = 0.0
        y = 0.0
        k = 0.0
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1

        //change in height
        for k in stride(from: -100.0, to: 600.0, by: 100.0){
        y = -1/25*pow(x-50, 2)+k
        
        // Draw the cannonball of the canvas
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 10, height: 10)
        

        
    }
    }
}
