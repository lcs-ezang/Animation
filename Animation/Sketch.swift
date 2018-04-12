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
    var y : Int
    var Starty : Int

    
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        Stary = 0
    }

    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        
        // Change position
        
        x += 0.05
        y = Int(85*sin(1.5*(Double(x.toRadians()))))
        if canvas.frameCount <= 333
        {
        for Starty in stride(from: 0, to: 600, by: 40){
        canvas.drawEllipse(centreX: Int(x), centreY: Starty + Int(y), width: 10, height: 10)
        canvas.drawEllipse(centreX: 500-Int(x), centreY: Starty - Int(y), width: 10, height: 10)
        }
            else {
        self.x = 50.0
        self.y = Int(85*sin(1.5*(Double(self.x.toRadians()))))
        self.canvas.drawEllipse(centreX: Int(self.x), centreY: 50, width: 100, height: 100)
        
    
    


}
}

}
