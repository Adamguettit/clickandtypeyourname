-----------------------------------------------------------------------------------------
--
-- main.lua
-- created by: Adam
-- created on: Feb 16
-- get what  ever is typed in simulater and show it in console
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0, 1, 0 )
local myText = display.newText( "Enter your name!", 100, 200, native.systemFont, 70 )
myText.x = 1000
myText.y = 600
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
answerTextField.id = "answer textField"
local clickButton = display.newImageRect( "./assets/sprites/clickButton.png", 406, 157 )
clickButton.x = display.contentCenterX
clickButton.y = display.contentCenterY
clickButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

clickButton:addEventListener( "touch", enterButtonTouch )