-- Homework 4
-- Bradley Lowe

require("L5")

-- function to setup sketch
function setup()
  -- Set window size and angle units
  size(400, 600)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("Rose Landscape")

  -- Describe the visual output
  describe("Draws a rose in a landscape")
end

-- draw loop, runs 30 times per second by default
function draw()
  -- Remove shape outlines
  noStroke()

  -- Draw the sky
  background(102, 204, 255)

  -- Draw the ground
  fill(92, 173, 74)
  ellipse(200, 610, 650, 260)

  -- Draw the background hills
  fill(48, 125, 62)
  ellipse(60, 520, 250, 150)
  ellipse(340, 520, 250, 150)

  -- Draw the clouds
  fill(245, 245, 245)
  ellipse(90, 100, 120, 50)
  ellipse(315, 160, 100, 45)

  -- Draw the sun
  fill(255, 215, 70)
  circle(310, 70, 75)

  -- Draw the rose stem
  fill(40, 145, 55)
  rect(185, 330, 30, 230)

  -- Draw the outer rose petals
  fill(245, 75, 80)
  ellipse(200, 220, 100, 100)
  ellipse(155, 260, 90, 100)
  ellipse(245, 260, 90, 100)
  ellipse(145, 310, 130, 90)
  ellipse(255, 310, 130, 90)
  ellipse(150, 355, 135, 80)
  ellipse(250, 355, 135, 80)

  -- Draw the center rose petal
  fill(190, 45, 50)
  ellipse(200, 270, 85, 100)
end