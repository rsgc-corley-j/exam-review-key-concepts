//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.fillColor = Color(hue: 190, saturation: 97, brightness: 83, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

canvas.drawText(message: "saturday", size: 10, x: 20, y: 550)
canvas.drawText(message: "mandela hall", size: 10, x: 150, y: 550)
canvas.drawText(message: "special guest", size: 10, x: 250, y: 550)

canvas.drawText(message: "october 16 1993 / 8pm", size: 10, x: 20, y: 530)
canvas.drawText(message: "university of sussex", size: 10, x: 150, y: 530)

canvas.drawText(message: "salad, plus my life story", size: 10, x: 250, y: 530)

canvas.drawText(message: "blur", size: 200, x: 10, y: 300)
canvas.textColor = Color(hue: 100, saturation: 100, brightness: 0, alpha: 10)

for x in stride(from: 0, to: 300, by: 5){
canvas.drawText(message: "blur", size: 200, x: 10, y: 300 - x)
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
