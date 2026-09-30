-- Homework 5
-- Bradley Lowe

require("L5")

-- Function to setup sketch
function setup()
    -- Set window size
    size(600, 400)

    -- Set the program title
    windowTitle("Night City")

    -- Describe the visual output
    describe("A nighttime cityscape with an airplane that follows the mouse")
end

-- Draw loop, runs 30 times per second by default
function draw()
    -- Draw the night sky
    background(25, 55, 105)

    -- Draw the moon
    noStroke()
    fill(255, 220, 120)
    circle(width / 5, height / 5, width / 8)

    -- Draw stars
    fill(255, 225, 130)
    circle(width / 12, height / 8, width / 80)
    circle(width / 2.2, height / 7, width / 90)
    circle(width / 1.4, height / 6, width / 85)
    circle(width / 1.12, height / 4, width / 90)

    -- Draw left cloud
    fill(115, 135, 165)
    ellipse(width / 10, height / 4, width / 7, height / 14)
    ellipse(width / 7, height / 4.2, width / 8, height / 12)
    ellipse(width / 5.5, height / 4, width / 8, height / 14)

    -- Draw right cloud
    ellipse(width / 1.35, height / 5.5, width / 7, height / 14)
    ellipse(width / 1.25, height / 6, width / 8, height / 12)
    ellipse(width / 1.15, height / 5.5, width / 8, height / 14)

    -- Draw the road
    fill(45, 45, 50)
    rect(0, height / 1.2, width, height / 6)

    -- Draw road markings
    fill(220, 220, 220)
    rect(width / 18, height / 1.1, width / 12, height / 45)
    rect(width / 4, height / 1.1, width / 12, height / 45)
    rect(width / 2.25, height / 1.1, width / 12, height / 45)
    rect(width / 1.6, height / 1.1, width / 12, height / 45)
    rect(width / 1.24, height / 1.1, width / 12, height / 45)

    -- Draw building one
    fill(30, 30, 35)
    rect(width / 18, height / 2, width / 6, height / 3)

    -- Draw building one windows
    fill(255, 210, 80)
    rect(width / 13, height / 1.8, width / 30, height / 14)
    rect(width / 7.5, height / 1.8, width / 30, height / 14)
    rect(width / 13, height / 1.5, width / 30, height / 14)
    rect(width / 7.5, height / 1.5, width / 30, height / 14)

    -- Draw building two
    fill(25, 25, 30)
    rect(width / 3.5, height / 2.7, width / 5.5, height / 2.15)

    -- Draw building two rooftop
    rect(width / 2.95, height / 3.2, width / 12, height / 17)

    -- Draw building two windows
    fill(255, 210, 80)
    rect(width / 3.25, height / 2.25, width / 32, height / 15)
    rect(width / 2.75, height / 2.25, width / 32, height / 15)
    rect(width / 2.38, height / 2.25, width / 32, height / 15)

    rect(width / 3.25, height / 1.8, width / 32, height / 15)
    rect(width / 2.75, height / 1.8, width / 32, height / 15)
    rect(width / 2.38, height / 1.8, width / 32, height / 15)

    rect(width / 3.25, height / 1.5, width / 32, height / 15)
    rect(width / 2.75, height / 1.5, width / 32, height / 15)
    rect(width / 2.38, height / 1.5, width / 32, height / 15)

    -- Draw building three
    fill(35, 35, 40)
    rect(width / 1.95, height / 1.85, width / 6, height / 3.4)

    -- Draw building three windows
    fill(255, 210, 80)
    rect(width / 1.82, height / 1.65, width / 9, height / 28)
    rect(width / 1.82, height / 1.45, width / 9, height / 28)
    rect(width / 1.82, height / 1.28, width / 9, height / 28)

    -- Draw building four
    fill(28, 28, 33)
    rect(width / 1.4, height / 2.1, width / 5.5, height / 2.8)

    -- Draw building four rooftop
    rect(width / 1.33, height / 2.5, width / 13, height / 14)

    -- Draw building four windows
    fill(255, 210, 80)
    rect(width / 1.34, height / 1.85, width / 30, height / 15)
    rect(width / 1.22, height / 1.85, width / 30, height / 15)

    rect(width / 1.34, height / 1.55, width / 30, height / 15)
    rect(width / 1.22, height / 1.55, width / 30, height / 15)

    rect(width / 1.34, height / 1.33, width / 30, height / 15)
    rect(width / 1.22, height / 1.33, width / 30, height / 15)

    -- Draw airplane body following the mouse
    fill(235, 235, 230)
    ellipse(mouseX, mouseY, width / 6, height / 15)

    -- Draw airplane wings
    fill(220, 70, 60)
    rect(
        mouseX - width / 45,
        mouseY - height / 16,
        width / 18,
        height / 20
    )

    rect(
        mouseX - width / 45,
        mouseY + height / 70,
        width / 18,
        height / 20
    )

    -- Draw airplane tail
    rect(
        mouseX - width / 11,
        mouseY - height / 22,
        width / 30,
        height / 18
    )

    -- Draw airplane nose
    fill(220, 70, 60)
    circle(
        mouseX + width / 12,
        mouseY,
        width / 45
    )

    -- Draw airplane windows
    fill(90, 145, 190)
    circle(
        mouseX - width / 35,
        mouseY,
        width / 70
    )

    circle(
        mouseX,
        mouseY,
        width / 70
    )

    circle(
        mouseX + width / 35,
        mouseY,
        width / 70
    )
end