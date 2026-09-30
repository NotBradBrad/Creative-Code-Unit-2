-- Homework 6
-- Bradley Lowe

require("L5")

-- Variables for moon size animation
moonSize = 75
moonGrowing = true

-- Variables for cloud position animation
cloudX = 90
cloudMovingRight = true

-- Variables for star color animations
starOneBrightness = 170
starOneBrightening = true

starTwoBrightness = 210
starTwoBrightening = false

starThreeBrightness = 155
starThreeBrightening = true

starFourBrightness = 230
starFourBrightening = false

starFiveBrightness = 185
starFiveBrightening = true

starSixBrightness = 200
starSixBrightening = false

starSevenBrightness = 160
starSevenBrightening = true

starEightBrightness = 220
starEightBrightening = false

-- Variables for comet position animation
cometX = 650
cometY = 55

-- Function to setup sketch
function setup()
    -- Set window size
    size(600, 400)

    -- Set the program title
    windowTitle("Moonlit Night")

    -- Describe the visual output
    describe("A nighttime landscape with independently twinkling stars, a cratered moon, a moving cloud, and a distant comet")
end

-- Draw loop, runs 30 times per second by default
function draw()
    -- Draw the night sky
    background(25, 55, 105)

    noStroke()

    -- Draw animated star one
    fill(255, starOneBrightness, 100)
    rect(width / 18, height / 12, 4, 18)
    rect(width / 18 - 7, height / 12 + 7, 18, 4)
    rect(width / 18 - 3, height / 12 + 3, 10, 10)
    circle(width / 18 + 2, height / 12 + 9, 7)

    -- Draw animated star two
    fill(255, starTwoBrightness, 100)
    rect(width / 2.7, height / 16, 3, 14)
    rect(width / 2.7 - 5, height / 16 + 5, 14, 3)
    rect(width / 2.7 - 2, height / 16 + 2, 8, 8)
    circle(width / 2.7 + 1.5, height / 16 + 7, 5)

    -- Draw animated star three
    fill(255, starThreeBrightness, 100)
    rect(width / 1.75, height / 9, 4, 18)
    rect(width / 1.75 - 7, height / 9 + 7, 18, 4)
    rect(width / 1.75 - 3, height / 9 + 3, 10, 10)
    circle(width / 1.75 + 2, height / 9 + 9, 7)

    -- Draw animated star four
    fill(255, starFourBrightness, 100)
    rect(width / 1.18, height / 15, 3, 15)
    rect(width / 1.18 - 5, height / 15 + 6, 15, 3)
    rect(width / 1.18 - 2, height / 15 + 2, 8, 8)
    circle(width / 1.18 + 1.5, height / 15 + 7.5, 5)

    -- Draw animated star five
    fill(255, starFiveBrightness, 100)
    rect(width / 9, height / 2.8, 4, 18)
    rect(width / 9 - 7, height / 2.8 + 7, 18, 4)
    rect(width / 9 - 3, height / 2.8 + 3, 10, 10)
    circle(width / 9 + 2, height / 2.8 + 9, 7)

    -- Draw animated star six
    fill(255, starSixBrightness, 100)
    rect(width / 2.15, height / 2.4, 3, 14)
    rect(width / 2.15 - 5, height / 2.4 + 5, 14, 3)
    rect(width / 2.15 - 2, height / 2.4 + 2, 8, 8)
    circle(width / 2.15 + 1.5, height / 2.4 + 7, 5)

    -- Draw animated star seven
    fill(255, starSevenBrightness, 100)
    rect(width / 1.45, height / 2.9, 4, 18)
    rect(width / 1.45 - 7, height / 2.9 + 7, 18, 4)
    rect(width / 1.45 - 3, height / 2.9 + 3, 10, 10)
    circle(width / 1.45 + 2, height / 2.9 + 9, 7)

    -- Draw animated star eight
    fill(255, starEightBrightness, 100)
    rect(width / 1.08, height / 2.2, 3, 15)
    rect(width / 1.08 - 5, height / 2.2 + 6, 15, 3)
    rect(width / 1.08 - 2, height / 2.2 + 2, 8, 8)
    circle(width / 1.08 + 1.5, height / 2.2 + 7.5, 5)

    -- Change star one color
    if starOneBrightening == true then
        starOneBrightness = starOneBrightness + 0.4

        if starOneBrightness >= 255 then
            starOneBrightening = false
        end
    else
        starOneBrightness = starOneBrightness - 0.4

        if starOneBrightness <= 150 then
            starOneBrightening = true
        end
    end

    -- Change star two color
    if starTwoBrightening == true then
        starTwoBrightness = starTwoBrightness + 0.6

        if starTwoBrightness >= 255 then
            starTwoBrightening = false
        end
    else
        starTwoBrightness = starTwoBrightness - 0.6

        if starTwoBrightness <= 150 then
            starTwoBrightening = true
        end
    end

    -- Change star three color
    if starThreeBrightening == true then
        starThreeBrightness = starThreeBrightness + 0.3

        if starThreeBrightness >= 255 then
            starThreeBrightening = false
        end
    else
        starThreeBrightness = starThreeBrightness - 0.3

        if starThreeBrightness <= 150 then
            starThreeBrightening = true
        end
    end

    -- Change star four color
    if starFourBrightening == true then
        starFourBrightness = starFourBrightness + 0.5

        if starFourBrightness >= 255 then
            starFourBrightening = false
        end
    else
        starFourBrightness = starFourBrightness - 0.5

        if starFourBrightness <= 150 then
            starFourBrightening = true
        end
    end

    -- Change star five color
    if starFiveBrightening == true then
        starFiveBrightness = starFiveBrightness + 0.7

        if starFiveBrightness >= 255 then
            starFiveBrightening = false
        end
    else
        starFiveBrightness = starFiveBrightness - 0.7

        if starFiveBrightness <= 150 then
            starFiveBrightening = true
        end
    end

    -- Change star six color
    if starSixBrightening == true then
        starSixBrightness = starSixBrightness + 0.35

        if starSixBrightness >= 255 then
            starSixBrightening = false
        end
    else
        starSixBrightness = starSixBrightness - 0.35

        if starSixBrightness <= 150 then
            starSixBrightening = true
        end
    end

    -- Change star seven color
    if starSevenBrightening == true then
        starSevenBrightness = starSevenBrightness + 0.55

        if starSevenBrightness >= 255 then
            starSevenBrightening = false
        end
    else
        starSevenBrightness = starSevenBrightness - 0.55

        if starSevenBrightness <= 150 then
            starSevenBrightening = true
        end
    end

    -- Change star eight color
    if starEightBrightening == true then
        starEightBrightness = starEightBrightness + 0.45

        if starEightBrightness >= 255 then
            starEightBrightening = false
        end
    else
        starEightBrightness = starEightBrightness - 0.45

        if starEightBrightness <= 150 then
            starEightBrightening = true
        end
    end

    -- Draw animated moon
    fill(255, 220, 120)
    circle(width / 3.8, height / 3.5, moonSize)

    -- Draw moon craters
    fill(220, 185, 100)

    circle(
        width / 3.8 - moonSize / 5,
        height / 3.5 - moonSize / 6,
        moonSize / 5
    )

    circle(
        width / 3.8 + moonSize / 5,
        height / 3.5 + moonSize / 7,
        moonSize / 4
    )

    circle(
        width / 3.8 - moonSize / 8,
        height / 3.5 + moonSize / 4,
        moonSize / 7
    )

    circle(
        width / 3.8 + moonSize / 6,
        height / 3.5 - moonSize / 4,
        moonSize / 9
    )

    -- Change moon size slowly
    if moonGrowing == true then
        moonSize = moonSize + 0.10

        if moonSize >= 105 then
            moonGrowing = false
        end
    else
        moonSize = moonSize - 0.10

        if moonSize <= 75 then
            moonGrowing = true
        end
    end

    -- Draw distant comet tail
    fill(105, 145, 185)
    rect(cometX + 28, cometY + 1, 20, 3)

    fill(140, 185, 220)
    rect(cometX + 18, cometY - 1, 28, 4)

    fill(180, 220, 245)
    rect(cometX + 8, cometY - 3, 35, 5)

    -- Draw distant comet head
    fill(220, 245, 255)
    circle(cometX, cometY, 12)

    -- Move comet slowly across the sky
    cometX = cometX - 0.45
    cometY = cometY + 0.12

    -- Reset comet after it leaves the screen
    if cometX <= -60 then
        cometX = width + 50
        cometY = 55
    end

    -- Draw animated cloud
    fill(115, 135, 165)
    ellipse(cloudX, height / 2.4, width / 7, height / 14)
    ellipse(cloudX + 35, height / 2.5, width / 8, height / 12)
    ellipse(cloudX + 70, height / 2.4, width / 8, height / 14)

    -- Change cloud position slowly
    if cloudMovingRight == true then
        cloudX = cloudX + 0.6

        if cloudX >= width - 150 then
            cloudMovingRight = false
        end
    else
        cloudX = cloudX - 0.6

        if cloudX <= 70 then
            cloudMovingRight = true
        end
    end

    -- Draw distant hills
    fill(35, 60, 75)
    ellipse(width / 6, height / 1.05, width / 2, height / 2.5)
    ellipse(width / 2, height / 1.02, width / 1.8, height / 2.2)
    ellipse(width / 1.15, height / 1.05, width / 2, height / 2.5)

    -- Draw foreground ground
    fill(25, 45, 50)
    rect(0, height / 1.18, width, height / 5)
end