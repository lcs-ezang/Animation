import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    // This function runs once
    override init() {
        
        //Starting positions
        x = 0.0
        y = 0.0
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        
        x += 1
        
        
        //y = -125x^2-500x
        
        y = -1/125*pow(x-250, 2)+500
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 50, height: 50)
        
    }
    
}
