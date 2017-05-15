//: [Previous](@previous) / [Next](@next)
//: # Sequence, part 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 Attempt to reproduce this image:
 
 ![Panda](panda.png "Panda")
 */
// Create the canvas
let canvas = Canvas(width: 300, height: 300)

// Draw panda main body
canvas.fillColor = Color.white
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 2
canvas.drawEllipse(centreX: canvas.width / 2, centreY: canvas.height / 2, width: 100, height: 100)

// Your code below...

canvas.drawEllipse(centreX: 150, centreY: 150, width: 100, height: 100)
canvas.drawEllipse(centreX: 150, centreY: 200, width: 75, height: 75)
//eyes
canvas.drawEllipse(centreX: 140, centreY: 210, width: 15, height: 25)
canvas.drawEllipse(centreX: 160, centreY: 210, width: 15, height: 25)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 140, centreY: 205, width: 10, height: 10)
canvas.drawEllipse(centreX: 160, centreY: 205, width: 10, height: 10)

//arms and legs
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 200, centreY: 175, width: 30, height: 30)
canvas.drawEllipse(centreX: 100, centreY: 175, width: 30, height: 30)
canvas.drawEllipse(centreX: 190, centreY: 115, width: 30, height: 30)
canvas.drawEllipse(centreX: 110, centreY: 115, width: 30, height: 30)

//ears
canvas.drawEllipse(centreX: 120, centreY: 230, width: 20, height: 20)
canvas.drawEllipse(centreX: 180, centreY: 230, width: 20, height: 20)
//mouth
canvas.drawEllipse(centreX: 150, centreY: 185, width: 40, height: 15)
canvas.fillColor = Color.white
canvas.borderColor = Color.white
canvas.drawEllipse(centreX: 150, centreY: 190, width: 40, height: 15)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
