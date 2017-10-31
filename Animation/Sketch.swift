import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    
    var x : Int
    var initialX : Int
    var initialY : Int
    var changeInX : Int
    var changeInY :Int
    
    // This function runs once
    override init() {
        
        let x = 250
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position and starting direction

        var initialX = random(from: 26, toButNotIncluding: 475)
        var initialY = random(from: 26, toButNotIncluding: 475)
        var changeInX = random(from: -1, toButNotIncluding: 2)
        var changeInY = random(from: -1, toButNotIncluding: 2)

    }
    //Initial start and direction

    //

    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Move

        // Change direction
        if initialX == 500
        {
            changeInX = -1
        }
        if initialX == 0
        {
            changeInX = 1
        }
        if initialY == 500
        {
            changeInY = -1
        }
        if initialY == 0
        {
            changeInY = 1
        }
        
        initialX += changeInX
        initialY += changeInY
        

        
        //Wipe the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: x, centreY: x, width: 500, height: 500)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: initialX, centreY: initialY, width: 50, height: 50)
        


        
    }
    
}
