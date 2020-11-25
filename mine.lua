-- should recieve 3 arguments, 
-- the first should be the width of the tunnel,
-- the second the height, and the third
-- should be the depth wished
local WIDTH, HEIGHT, DEPTH = 3, 3, 10 -- by default i will set these

local THROW_ITEMS = {
    -- the items that the turtle should throw when checkInventory()
    cobblestone = "minecraft:cobblestone",
    dirt = "minecraft:dirt",
}

local function refuel()
    -- should refuel the turtle with the fuel available in the inventory currently
    -- coal, coal block, charcoal, lava bucket, until it reaches the minAmountNeeded
    for (i = 1, 16, 1) do
        turtle.select(i)
        local item_detail = turtle.getItemDetail()
        if (item_detail ~= nil and item_detail.name == "minecraft:coal" or item_detail.name == "minecraft:lava_bucket") then
            turtle.refuel(item_detail.count)
        else
            print("No fuel left!")
        end
    end
end

local function checkFuel(fuel_required)
    -- should check if the turtle has enough fuel to complete the task
    -- if it does dont do anything if it doesnt it should call refuel() until it
    -- has enough to complete the task
    local fuel_level = turtle.getFuelLevel()
    if (fuel_level < fuel_required) then
        -- the fuel level is not enough
        refuel()
    end
end

local function checkInventory()
    -- should check if the inventory has anything that should be thrown away
    -- and if so, do it
    -- additionally if the inventory is full, get back and ask for a chest,
    -- and place the items
    
end

local function dig()
    -- given the parameters will dig a hole of that volume

end