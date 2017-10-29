import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        // Draw an ellipse going to the top right of the canvas
        canvas.fillColor = red
        canvas.drawEllipse(centreX: x, centreY: x, width: 20, height: 20)
        
        canvas.fillColor = blue
        canvas.drawEllipse(centreX: x, centreY: 500-x, width: 20, height: 20)
        
        canvas.fillColor = green
        canvas.drawEllipse(centreX: 500-x, centreY: x, width: 20, height: 20)
        
        canvas.fillColor = orange
        canvas.drawEllipse(centreX: 500-x, centreY: 500-x, width: 20, height: 20)
    }
    
}
