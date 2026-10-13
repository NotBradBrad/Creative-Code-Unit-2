-- Homework 8
-- Bradley Lowe

require("L5")

-- Horror story choices
characters = {"A stranger", "A ghost", "A detective", "A creature", "A lost traveler"}

locations = {"an old house", "a dark forest", "a rundown hospital", "a basement", "an unknown city"}

events = {"saw a figure", "found a door", "heard screaming", "followed footprints"}

function setup()
    size(900, 400)

    windowTitle("Horror Story Generator")
    describe("Click the mouse to generate a random horror story")

    textGenerator()
end

function draw()
end

-- Generate a random horror story
function textGenerator()
    background(30, 30, 40)

    -- Border around the window
    noFill()
    stroke(130, 130, 150)
    strokeWeight(3)
    rect(20, 20, 860, 360)
    noStroke()

    -- Title
    fill(255)
    textSize(30)
    text("Horror Story Generator", 250, 90)

    -- Pick random choices
    local character = random(characters)
    local location = random(locations)
    local event = random(events)

    -- Display the story
    textSize(20)
    text(character .. " entered " .. location, 190, 200)
    text("and " .. event .. ".", 190, 240)

    -- Instructions
    textSize(16)
    text("Click to generate another story", 310, 340)
end

-- Mouse controls
function mousePressed()
    textGenerator()
end