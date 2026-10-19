
-- Homework 9
-- Bradley Lowe

require("L5")

function setup()
    size(800, 600)

    windowTitle("Fall Forest")
    describe("A shadow figure with red eyes in a fall forest")

    forest = loadImage("assets/Fall Pathway.png")
end

function draw()
    background(255)

    -- Display the forest image
    image(forest, 0, 0, 800, 600)

    -- Shadow figure head
    noStroke()
    fill(20, 15, 15, 210)
    ellipse(650, 285, 24, 24)

    -- Shadow figure body
    fill(25, 20, 20, 200)
    rect(640, 297, 20, 48)

    -- Left arm
    stroke(30, 20, 20, 190)
    strokeWeight(8)
    line(641, 305, 633, 338)

    -- Right arm
    stroke(35, 25, 25, 180)
    strokeWeight(8)
    line(659, 305, 667, 338)

    -- Left leg
    stroke(20, 15, 20, 220)
    strokeWeight(9)
    line(645, 345, 640, 382)

    -- Right leg
    stroke(25, 15, 15, 215)
    strokeWeight(9)
    line(655, 345, 662, 382)

    -- Red eyes
    noStroke()
    fill(255, 30, 30, 180)
    ellipse(645, 283, 4, 4)

    fill(220, 20, 20, 200)
    ellipse(655, 283, 4, 4)
end