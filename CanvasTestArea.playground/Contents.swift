//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?

//Translate the canvas
canvas.translate(byX: 200, byY: 200)

//Remove borders
canvas.drawShapesWithBorders = false



//Pumpkin poportions
let pumpkinSize = random(from: 100, toButNotIncluding: 300)

//Stem
canvas.fillColor = Color.init(hue: 0, saturation: 25, brightness: 25, alpha: 100)
canvas.drawEllipse(centreX: pumpkinSize/5+5, centreY: pumpkinSize/2, width: pumpkinSize/2, height: pumpkinSize/2)
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: pumpkinSize/4+pumpkinSize/40, centreY: pumpkinSize/2-pumpkinSize/10, width: pumpkinSize/2, height: pumpkinSize/2)


//Pumpkin color
canvas.fillColor = Color.orange

//Pumpkin
canvas.drawEllipse(centreX: pumpkinSize/5, centreY: 0, width: pumpkinSize, height: pumpkinSize)
canvas.drawEllipse(centreX: -pumpkinSize/5, centreY: 0, width: pumpkinSize, height: pumpkinSize)


//Pumpkin eyes

//Pumpkin eyes colours
let pumpkinEyeColour = random(from: 1, toButNotIncluding: 4)

if pumpkinEyeColour == 1{
    canvas.fillColor = Color.black
}; if pumpkinEyeColour == 2 {
    canvas.fillColor = Color.yellow
} else {
    let h = random(from: 0, toButNotIncluding: 361)
    let s = random(from: 75, toButNotIncluding: 100)
    let b = random(from: 50, toButNotIncluding: 75)
    
    canvas.fillColor = Color.init(hue: h, saturation: s, brightness: b, alpha: 100)
}

//Pumpkin eye shapes
let pumpkinEyes = random(from: 1, toButNotIncluding: 5)

if pumpkinEyes == 1{
    canvas.drawEllipse(centreX: pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
        canvas.drawEllipse(centreX: -pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
}; if pumpkinEyes == 2{
    canvas.drawRectangle(centreX: pumpkinSize/4, centreY: pumpkinSize/5, width: pumpkinSize/3, height: pumpkinSize/3)
        canvas.drawRectangle(centreX: -pumpkinSize/4, centreY: pumpkinSize/5, width: pumpkinSize/3, height: pumpkinSize/3)
}; if pumpkinEyes == 3{
    canvas.drawEllipse(centreX: pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
    canvas.drawEllipse(centreX: -pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
    canvas.fillColor = Color.orange
    canvas.drawEllipse(centreX: pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/5, height: pumpkinSize/5)
    canvas.drawEllipse(centreX: -pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/5, height: pumpkinSize/5)
}; if pumpkinEyes == 4 {
    canvas.drawEllipse(centreX: pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
    canvas.drawEllipse(centreX: -pumpkinSize/4, centreY: pumpkinSize/4, width: pumpkinSize/3, height: pumpkinSize/3)
    canvas.fillColor = Color.orange
    canvas.drawEllipse(centreX: pumpkinSize/4, centreY: pumpkinSize/3, width: pumpkinSize/3, height: pumpkinSize/3)
    canvas.drawEllipse(centreX: -pumpkinSize/4, centreY: pumpkinSize/3, width: pumpkinSize/3, height: pumpkinSize/3)
}

//Pumpkin Mouth

//Pumpkin Mouth colour
if pumpkinEyeColour == 1{
    canvas.fillColor = Color.black
} else {
    canvas.fillColor = Color.yellow
}

//Pumpkin Mouth Shapes
let pumpkinMouthShape = random(from: 1, toButNotIncluding: 2)

if pumpkinMouthShape == 1{
    canvas.drawEllipse(centreX: 0, centreY: -pumpkinSize/4, width: pumpkinMouthShape/3, height: pumpkinMouthShape/3)
}










/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


