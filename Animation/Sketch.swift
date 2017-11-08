import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    
    
    
    
    var x : Double
    var changeSX : Double
    var distance : Double
    var xPosition : Double
    var yPosition : Double
    var changeInX : Double
    var changeInY : Double
    var h : Int
    var s : Int
    var b : Int
    
    // This function runs once
    override init() {


        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position and starting direction
        x = 250.0
        distance = 0.0
        changeSX = 1.0
        xPosition = Double(random(from: Int(26.0), toButNotIncluding: Int(475.0)))
        yPosition = Double(random(from: Int(26.0), toButNotIncluding: Int(475.0)))
        changeInX = 2.0
        changeInY = 2.0
        h = 0
        b = 0
        s = 0
    }
    //Initial start and direction

    //

    // Runs in a loop, forever, to create the animated effect
    func draw() {

        
        //Move

        
        // Change direction
        if xPosition >= 475.0
        {
            changeInX = -2.0
        }
        if xPosition <= 25.0
        {
            changeInX = 2.0
        }
        if yPosition >= 475.0
        {
            changeInY = -2.0
        }
        if yPosition <= 25.0
        {
            changeInY = 2.0
        }
        //Second circle
        if x >= 475.0
        {
            changeSX = -1.0
        }
        if x <= 25.0
        {
            changeSX = 1.0
        }

        
        xPosition += changeInX
        yPosition += changeInY
        x += changeSX
        
//        //Wipe the screen
//        canvas.drawShapesWithFill = true
//        canvas.fillColor = Color.white
//        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
//
//        //Make circles not have fill
//        canvas.drawShapesWithFill = false
//        //Wild circle
//        canvas.fillColor = Color.black
//        canvas.drawEllipse(centreX: Int(xPosition), centreY: Int(yPosition), width: 100, height: 100)
//        //Second circle
//        canvas.drawEllipse(centreX: Int(x), centreY: 250, width: 200, height: 200)
        
        //Draw the line
        
        //Color
        let h = random(from: 0, toButNotIncluding: 361)
        let s = random(from: 75, toButNotIncluding: 101)
        let b = random(from: 50, toButNotIncluding: 101)
        canvas.lineColor = Color.init(hue: h, saturation: s, brightness: b, alpha: 100)
        
        let distance = sqrt(pow(xPosition-x, 2)+pow(yPosition-250, 2))
        if distance <= 150 {
            canvas.drawLine(fromX: Int(xPosition), fromY: Int(yPosition), toX: Int(x), toY: 250)
        }
    }
    
}
