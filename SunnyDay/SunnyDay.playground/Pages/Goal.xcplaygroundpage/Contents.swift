//: # Your goal
//: ![goal](scenario.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 500 pixels wide by 400 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 500, height: 400)

//rectangel blue background
canvas.fillColor = Color(hue: 195, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 400)

//x loop
canvas.defaultLineWidth = 5
for x in stride(from: 0, through: 500, by: 50) {
    if x % 100 == 0 {
        canvas.lineColor = Color.yellow
    }else{
        canvas.lineColor = Color.orange
    }
    
    canvas.drawLine(fromX: 0, fromY: 400, toX: x, toY: 0)
}


//Y loop
canvas.defaultLineWidth = 5
for x in stride(from: 0, through: 400, by: 50) {
    if x % 100 == 0 {
        canvas.lineColor = Color.yellow
    }else{
        canvas.lineColor = Color.orange
    }
    
    canvas.drawLine(fromX: 0, fromY: 400, toX: 500, toY: x)
}
// sun
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: 0, centreY: 400, width: 100, height: 100)

// red circle
canvas.borderColor = Color.red
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 475, height: 400)
//orange
canvas.borderColor = Color.orange
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 435, height: 365)
//yellow
canvas.borderColor = Color.yellow
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 395, height: 330)
//green
canvas.borderColor = Color.green
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 355, height: 295)
//blue
canvas.borderColor = Color.blue
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 315, height: 260)

//purple
canvas.borderColor = Color.purple
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 0 , width: 275, height: 225)




//cloud 1
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.drawEllipse(centreX: 450, centreY: 400, width: 75, height: 75)
//cloud 2
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.drawEllipse(centreX: 500, centreY: 365, width: 75, height: 75)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
