//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
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

        canvas.drawShapesWithBorders = false
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {

    x += -1
        
        // Draw an ellipse bottom of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 100, width: 50, height: 50)
    
        // Draw an ellipse lower middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: -x+500, centreY: 200, width: 50, height: 50)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 300, width: 50, height: 50)
        
        // Draw an ellipse top middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: -x+500, centreY: 400, width: 50, height: 50)
        
        // Draw an ellipse at the top of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 500, width: 50, height: 50)
    }


}

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */



