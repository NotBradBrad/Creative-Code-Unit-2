-- Homework 7
-- Bradley Lowe

require("L5")

-- Staircase starting positions
stairOneX = 45
stairOneY = 230

stairTwoX = 45
stairTwoY = 340

-- Distance between staircase shapes
stepWidth = 55
stepHeight = 28

-- Animation controls
stairMoving = false
chainMoving = false

stairTimer = 0
chainOffset = 0

stairSpeed = 0.018
chainSpeed = 1

-- Diamond chain positions
chainStartX = 515
chainY = 200

-- Random diamond sizes
diamondSizes = {}

function setup()
    size(900, 400)

    windowTitle("Staircase and Diamond Chain")
    describe("Shapes take turns hopping up a staircase and staying in place while a diamond chain scrolls")

    -- Randomize diamond sizes
    for i = 1, 5 do
        diamondSizes[i] = random(24, 31)
    end
end

-- Draw circles, squares, and triangles
function drawStairShape(x, y, shapeType, secondRow)
    noStroke()

    if secondRow == false then
        if shapeType == 0 then
            fill(0, 120, 191)
            circle(x, y, 32)
        elseif shapeType == 1 then
            fill(255, 72, 176)
            rect(x - 16, y - 16, 32, 32)
        else
            fill(255, 232, 0)
            triangle(x, y - 18, x - 18, y + 16, x + 18, y + 16)
        end
    else
        if shapeType == 0 then
            fill(155, 100, 200)
            circle(x, y, 32)
        elseif shapeType == 1 then
            fill(65, 180, 165)
            rect(x - 16, y - 16, 32, 32)
        else
            fill(255, 72, 176)
            triangle(x, y - 18, x - 18, y + 16, x + 18, y + 16)
        end
    end
end

function draw()
    -- Background
    background(30, 35, 55)
    noStroke()

    -- Left panel
    fill(40, 47, 70)
    rect(20, 20, 420, 360)

    -- Right panel
    fill(48, 42, 65)
    rect(460, 20, 420, 360)

    -- Update staircase animation
    if stairMoving == true then
        stairTimer = stairTimer + stairSpeed

        -- Reset after all 14 shapes have moved
        if stairTimer >= 15 then
            stairTimer = 0
        end
    end

    -- Figure out which shape is moving
    local turn = math.floor(stairTimer)
    local progress = stairTimer - turn

    -- First 7 turns: top staircase
    -- Next 7 turns: bottom staircase
    local activeRow = math.floor(turn / 7)
    local activeShape = turn % 7

    -- Amount of movement for current shape
    local moveAmount = 0
    local hopHeight = 0

    if progress < 0.7 then
        moveAmount = progress / 0.7
        hopHeight = math.sin(moveAmount * math.pi) * 10
    else
        moveAmount = 1
        hopHeight = 0
    end

    -- First staircase
    for i = 0, 6 do
        local x = stairOneX + i * stepWidth
        local y = stairOneY - i * stepHeight

        -- Shapes that already moved stay on their new step
        if activeRow > 0 or (activeRow == 0 and i < activeShape) then
            x = x + 22
            y = y - 20

        -- Current shape hops toward next step
        elseif activeRow == 0 and i == activeShape then
            x = x + moveAmount * 22
            y = y - moveAmount * 20 - hopHeight
        end

        drawStairShape(x, y, i % 3, false)
    end

    -- Second staircase
    for i = 0, 6 do
        local x = stairTwoX + i * stepWidth
        local y = stairTwoY - i * stepHeight

        -- Shapes that already moved stay on their new step
        if activeRow > 1 or (activeRow == 1 and i < activeShape) then
            x = x + 22
            y = y - 20

        -- Current shape hops toward next step
        elseif activeRow == 1 and i == activeShape then
            x = x + moveAmount * 22
            y = y - moveAmount * 20 - hopHeight
        end

        drawStairShape(x, y, i % 3, true)
    end

    -- Update diamond chain
    if chainMoving == true then
        chainOffset = chainOffset + chainSpeed

        if chainOffset >= 375 then
            chainOffset = 0
        end
    end

    -- Diamond chain pattern
    for i = 1, 5 do
        local x = chainStartX + (i - 1) * 75 + chainOffset
        local y = chainY

        -- Wrap diamonds around
        while x > 850 do
            x = x - 375
        end

        local diamondSize = diamondSizes[i]
        noStroke()

        -- Diamond colors
        if i % 3 == 1 then
            fill(0, 120, 191)
        elseif i % 3 == 2 then
            fill(255, 72, 176)
        else
            fill(255, 232, 0)
        end

        quad(
            x, y - diamondSize,
            x + diamondSize, y,
            x, y + diamondSize,
            x - diamondSize, y
        )

        -- Small circles between diamonds
        if i < 5 then
            if i % 2 == 0 then
                fill(65, 180, 165)
            else
                fill(155, 100, 200)
            end

            local circleX = x + 38

            if circleX > 850 then
                circleX = circleX - 375
            end

            circle(circleX, y, 13)
        end
    end

    -- Center divider
    stroke(110, 110, 135)
    line(450, 30, 450, 370)
end

-- Mouse controls
function mousePressed()
    -- Left side controls staircase
    if mouseX < 450 then
        stairMoving = not stairMoving
    -- Right side controls diamond chain
    else
        chainMoving = not chainMoving
    end
end