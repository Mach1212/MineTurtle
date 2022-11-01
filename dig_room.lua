local function rotate(r, self)
    mismatch = r - self
    if mismatch == 0 then
        return end
    
    if mismatch > 2 then
        turtle.turnRight()
        return r 
    else 
        while mismatch ~= 0 do
            turtle.turnLeft()
            mismatch = mismatch - 1
        end
    end

    return r 
end

local function main()
    print("\nCube Excavator\n")
    print("The coordinate system is based on the bot.\nForward is +z.\nRight is +x.\nUp is +y\n")

    write("x: ")
    x = tonumber(io.read())
    write("y: ")
    y = tonumber(io.read())
    write("z: ")
    z = tonumber(io.read())

    blocks = math.abs(x * y * z)
    if blocks == 0 then
        print("Area zero specified. Done")
        return end
    level_moves = blocks / 2
    remainder = blocks % 2
    fuel = level_moves + remainder + math.abs(y * 2)

    while turtle.getFuelLevel() < fuel do
        turtle.select(1)
        if ~turtle.refuel() then
            print("Additional fuel required: " .. fuel - turtle.getFuelLevel())
            return end
    end

    facing = 1
    turtleX = 1
    turtleY = 1
    turtleZ = 1
    while turtleY ~= y do
        while turtleZ ~= z do
            while turtleX ~= x do
                if x < 0 then
                    facing = rotate(3, facing)
                    turtleX = turtleX - 1
                else
                    facing = rotate(1, facing)
                    turtleX = turtleX + 1
                end

                turtle.dig()
                turtle.forward()
                if y - turtleY > 1 then
                    turtle.digUp() end
            end
            if z < 0 then
                facing = rotate(2, facing)
                turtleZ = turtleZ - 1
            else
                facing = rotate(4, facing)
                turtleZ = turtleZ + 1
            end
            turtle.dig()
        end
    end
end

main()
