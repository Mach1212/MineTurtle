turtle = {}

--- Craft items using ingredients anywhere in the turtle's inventory and place results in the active slot. If a quantity is specified, it will craft only up to that many items, otherwise, it will craft as many of the items as possible.
--- @param quantity number The number of the items to craft
--- @return boolean Success
function turtle:craft(quantity) end
--- Try to move the turtle forward
--- @return boolean Success
function turtle:forward() end
--- Try to move the turtle backward
--- @return boolean Success
function turtle:back() end
--- Try to move the turtle up
--- @return boolean Success
function turtle:up() end
--- Try to move the turtle down
--- @return boolean Success
function turtle:down() end
--- Turn the turtle left
--- @return boolean Success
function turtle:turnLeft() end
--- Turn the turtle right
--- @return boolean Success
function turtle:turnRight() end
--- Make the turtle select slot slotNum (1 is top left, 16 (9 in 1.33 and earlier) is bottom right)
--- @param slotNum number The slot to select from 1(top left) to 16(bottom right)
--- @return boolean Success
function turtle:select(slotNum) end
--- Indicates the currently selected inventory slot
--- @return number The currently selected slot, 1(top left) to 16(bottom right)
function turtle:getSelectedSlot() end
--- Counts how many items are in the currently selected slot or, if specified, slotNum slot
--- @param slotNum number The slot to get the item count of, 1(top left) to 16(bottom right)
--- @return number The number of items in the specified slot
function turtle:getItemCount(slotNum) end
--- Counts how many remaining items you need to fill the stack in the currently selected slot or, if specified, slotNum slot
--- @param slotNum number The slot to get the item count of, 1(top left) to 16(bottom right)
--- @return number The number of items which can fit in the selected slot
function turtle:getItemSpace(slotNum) end
--- Returns the ID string, count and damage values of currently selected slot or, if specified, slotNum slot
--- @param slotNum number The slot to get the item count of, 1(top left) to 16(bottom right)
--- @return table
function turtle:getItemDetail() end
--- Attempts to equip an item in the current slot to the turtle's left side, switching the previously equipped item back into the inventory
function turtle:equipLeft() end
--- Attempts to equip an item in the current slot to the turtle's right side, switching the previously equipped item back into the inventory
function turtle:equipRight() end
--- Attacks in front of the turtle.
function turtle:attack() end
--- Attacks above the turtle.
function turtle:attackUp() end
--- Attacks under the turtle.
function turtle:attackDown() end
--- Breaks the block in front. With hoe: tills the dirt in front of it.
function turtle:dig() end
--- Breaks the block above.
function turtle:digUp() end
--- Breaks the block below. With hoe: tills the dirt beneath the space below it.
function turtle:digDown() end
--- Places a block of the selected slot in front. Engrave signText on signs if provided. Collects water or lava if the currently selected slot is an empty bucket.
function turtle:place() end
--- Places a block of the selected slot above. Collects water or lava if the currently selected slot is an empty bucket.
function turtle:placeUp() end
--- Places a block of the selected slot below. Collects water or lava if the currently selected slot is an empty bucket.
function turtle:placeDown() end
--- Detects if there is a block in front. Does not detect mobs.
function turtle:detect() end
--- Detects if there is a block above
function turtle:detectUp() end
--- Detects if there is a block below
function turtle:detectDown() end
--- Returns the ID string and metadata of the block in front of the Turtle
function turtle:inspect() end
--- Returns the ID string and metadata of the block above the Turtle
function turtle:inspectUp() end
--- Returns the ID string and metadata of the block below the Turtle
function turtle:inspectDown() end
--- Detects if the block in front is the same as the one in the currently selected slot
function turtle:compare() end
--- Detects if the block above is the same as the one in the currently selected slot
function turtle:compareUp() end
--- Detects if the block below is the same as the one in the currently selected slot
function turtle:compareDown() end
--- Compare the current selected slot and the given slot to see if the items are the same. Returns true if they are the same, false if not.
function turtle:compareTo() end
--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e in front of the turtle) it will try to place into the inventory, returning false if the inventory is full.
function turtle:drop() end
--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e above the turtle) it will try to place into the inventory, returning false if the inventory is full.
function turtle:dropUp() end
--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e below the turtle) it will try to place into the inventory, returning false if the inventory is full. If above a furnace, will place item in the top slot.
function turtle:dropDown() end
--- Picks up an item stack of any number, from the ground or an inventory in front of the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
function turtle:suck() end
--- Picks up an item stack of any number, from the ground or an inventory above the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
function turtle:suckUp() end
--- Picks up an item stack of any number, from the ground or an inventory below the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
function turtle:suckDown() end
--- If the current selected slot contains a fuel item, it will consume it to give the turtle the ability to move.
--- Added in 1.4 and is only needed in needfuel mode. If the current slot doesn't contain a fuel item, it returns false. Fuel values for different items can be found at Turtle.refuel#Fuel_Values. If a quantity is specified, it will refuel only up to that many items, otherwise, it will consume all the items in the slot.
function turtle:refuel() end
--- Returns the current fuel level of the turtle, this is the number of blocks the turtle can move.
--- If turtleNeedFuel = 0 then it returns "unlimited".
function turtle:getFuelLevel() end
--- Returns the maximum amount of fuel a turtle can store - by default, 20,000 for regular turtles, 100,000 for advanced.
--- If turtleNeedFuel = 0 then it returns "unlimited".
function turtle:getFuelLimit() end
--- Transfers quantity items from the selected slot to slot. If quantity isn't specified, will attempt to transfer everything in the selected slot to slot.
function turtle:transferTo() end
