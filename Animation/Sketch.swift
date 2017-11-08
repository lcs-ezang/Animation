import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    

    var xPosition : Int
    var yPosition : Int
    var changeInX : Int
    var changeInY :Int
    
    // This function runs once
    override init() {


        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position and starting direction

        xPosition = random(from: 26, toButNotIncluding: 475)
        yPosition = random(from: 26, toButNotIncluding: 475)
        changeInX = random(from: -5, toButNotIncluding: 6)
        changeInY = random(from: -5, toButNotIncluding: 6)

    }
    //Initial start and direction

    //

    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Move

        // Change direction
        if xPosition >= 475
        {
            changeInX = -5
        }
        if xPosition <= 25
        {
            changeInX = 5
        }
        if yPosition >= 475
        {
            changeInY = -5
        }
        if yPosition <= 25
        {
            changeInY = 5
        }
        
        xPosition += changeInX
        yPosition += changeInY
        

        
        //Wipe the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        // Draw an ellipse somewhere in the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: xPosition, centreY: yPosition, width: 50, height: 50)
        


        
    }
    
}
