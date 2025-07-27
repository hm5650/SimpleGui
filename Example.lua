-- really cool gui this is a WIP tho :>

-- Config
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/hm5650/SimpleGui/refs/heads/main/SimpleGui.lua"))()
local ui = UILibrary.new({
    TitleText = "My Really cool gui", -- change title text
    Size = UDim2.new(0, 175, 0, 225), -- change length n width
    Position = UDim2.new(0.5, -140, 0.5, -190), -- change position when UI appears
})

-- Elements

local section1 = ui:AddSection("Basic Controls") -- section

-- Button
ui:AddButton({
    Text = "Button Sample",
    Callback = function()
        print("Clicked!")
    end
})

-- Toggle
local toggle = ui:AddToggle({
    Text = "Toggle Sample",
    Default = true,
    Callback = function(state)
        print("Toggle state changed to:", state)
    end
})

-- Toggle with GetState
local toggle, getToggleState = ui:AddToggle({
    Text = "Toggle Sample",
    Default = true,
    Callback = function(state)
        print("Toggle state changed to:", state)
    end
})

-- Button to check GetState
ui:AddButton({
    Text = "Check Toggle State",
    Callback = function()
        print("Current toggle state:", getToggleState())
    end
})

ui:AddSeparator() -- Separator/Divider
local section2 = ui:AddSection("TextBoxz")

-- Simple Textbox
local textBox = ui:AddTextBox({
    Text = "Type Me!",
    Default = "stuff",
    Placeholder = "Type Me!",
    Callback = function(text)
        print("entered:", text)
    end
})

ui:AddTextBox({
    Text = "Password",
    Default = "Stuff",
    Placeholder = "Enter password",
    Callback = function(text)
        print("nice pass:", text)
    end
})

ui:AddSeparator()
local section3 = ui:AddSection("Stuff")

-- UI controlz

ui:AddButton({
    Text = "Change UI Title",
    Callback = function()
        ui:SetTitle("New Title - " .. os.date("%X"))
    end
})

ui:AddButton({
    Text = "ByeBye",
    Callback = function()
        ui:Destroy()
    end
})

ui:AddSeparator()
local section4 = ui:AddSection("Labels")

-- labelz

ui:AddLabel("I'm a label")
ui:AddLabel("Today: " .. os.date("%B %d, %Y"))
