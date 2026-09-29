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
  -- Draw the sky
  background(102, 204, 255)

  -- Draw the ground
  noStroke()
  fill(92, 173, 74)
  ellipse(200, 610, 650, 220)

  -- Draw the background hills
  fill(48, 125, 62)
  ellipse(55, 545, 220, 120)
  ellipse(345, 545, 220, 120)

  -- Draw the clouds
  fill(245, 245, 245)
  ellipse(85, 95, 125, 45)
  ellipse(315, 155, 105, 40)

  -- Draw the sun
  fill(255, 215, 70)
  circle(310, 70, 75)

  -- Draw the rose stem
  fill(40, 145, 55)
  rect(187, 330, 26, 230)

  -- Add outlines to the rose petals
  stroke(120, 30, 35)
  strokeWeight(3)

  -- Draw the top rose petal
  fill(245, 75, 80)
  ellipse(200, 235, 95, 85)

  -- Draw the upper rose petals
  ellipse(165, 265, 75, 90)
  ellipse(235, 265, 75, 90)

  -- Draw the middle rose petals
  ellipse(155, 305, 105, 75)
  ellipse(245, 305, 105, 75)

  -- Draw the lower rose petals
  ellipse(160, 345, 115, 70)
  ellipse(240, 345, 115, 70)

  -- Draw the center rose petal
  fill(195, 45, 55)
  ellipse(200, 280, 65, 75)
end