-- CREDITS
-- eggg#5231 - Creator of the script, main and only scripter.
-- OrionLib - Library for the script.
-- Infinite Yield - Took the no purchase prompt
-- Ezpi#0474 - Modified their autoclicker AFKable autoclicker


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local VirtualInputManager = game:GetService("VirtualInputManager")
local Window = OrionLib:MakeWindow({Name = "EGGG HUB", HidePremium = true, SaveConfig = true, ConfigFolder = "C3RILFORGE"})

-- Local player variables
local LocalPlayer = game.Players.LocalPlayer
local Char = LocalPlayer.Character
local Mouse = LocalPlayer:GetMouse()

local Ratio = {"Ratio", " + ", "L", "+", "GET GOOD"}

function Notify(Title, Message, Image, Duration)
    OrionLib:MakeNotification({
        Name = tostring(Title),
        Content = tostring(Message),
        Image = tostring(Image),
        Time = tonumber(Duration)
    })
end

local AutoFarmTab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "7063853989",
	PremiumOnly = false
})

local PetsTab = Window:MakeTab({
    Name = "Pets",
    Icon = "7063853989",
    PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "8674005118",
    PremiumOnly = false
})

local LocalPlayerTab = Window:MakeTab({
    Name = "Local Player",
    Icon = "6236272252",
    PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "6236272252",
    PremiumOnly = false
})

function AutoClick(On)
    if On then
        local args = {
            [1] = {
                ["manual"] = {
                    ["99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"] = 1
                }
            }
        }
        
        game:GetService("ReplicatedStorage").Clickerr:InvokeServer(unpack(args))        
    end  
end

-- Autofarm tab
AutoFarmTab:AddToggle({
	Name = "Autoclick",
	Default = false,
	Callback = function(Value)
		while Value do
            AutoClick(Value)
            wait(1.5)
        end
    end
})

local AutoRebirthValue = 0
local RebirthOn = false

AutoFarmTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        if Value then
            RebirthOn = true
            repeat 
                local args = {
                    [1] = tonumber(AutoRebirthValue),
                    [2] = false,
                    [3] = false
                }
                
                game:GetService("ReplicatedStorage").Events.Client.requestRebirth:FireServer(unpack(args))  
                wait(0.2)              
            until RebirthOn == false
        else
            RebirthOn = false
        end
    end
})

AutoFarmTab:AddDropdown({
	Name = "Auto Rebirth Amount",
	Default = "1",
    --          1    5    10    50    250     1k      5k      25k      125k      500k       3m          15m        50m         250m          1b             5b           25b             50b             150b            750b            3.5T              20T               100T              500T                2.5QA                 15QA                75QA                 375QA                  2.5QI                  15QI                     75QI                    375QI             2SX      10SX      50SX      250SX      1.5sp      20sp      100sp     600sp
	Options = {"1", "5", "10", "50", "250", "1K", "5K", "25K", "125K", "500K", "3M", "15M", "50M", "250M", "1B", "5B", "25B", "50B", "150B", "750B", "3.5T", "20T", "100T", "500T", "2.5Qa", "15Qa", "75Qa", "375Qa", "2.5Qi", "15Qi", "75Qi", "375Qi", "2Sx", "10Sx", "50Sx", "250Sx", "1.5Sp", "20Sp", "100Sp", "600Sp", "3Oc", "18Oc", "90OC", "500Oc", "2.5No", "15No", "75No", "450No", "2.5Dc"},
	Callback = function(Value)
		if Value == "1" then
            AutoRebirthValue = 1
        elseif Value == "5" then
            AutoRebirthValue = 5
        elseif Value == "10" then
            AutoRebirthValue = 10
        elseif Value == "50" then
            AutoRebirthValue = 50
        elseif Value == "250" then
            AutoRebirthValue = 250
        elseif Value == "1K" then
            AutoRebirthValue = 1000
        elseif Value == "5K" then
            AutoRebirthValue = 5000
        elseif Value == "25K" then
            AutoRebirthValue = 25000
        elseif Value == "125K" then
            AutoRebirthValue = 125000
        elseif Value == "500K" then
            AutoRebirthValue = 500000
        elseif Value == "3M" then
            AutoRebirthValue = 3000000
        elseif Value == "15M" then
            AutoRebirthValue = 15000000
        elseif Value == "50M" then
            AutoRebirthValue = 50000000
        elseif Value == "250M" then
            AutoRebirthValue = 250000000
        elseif Value == "1B" then
            AutoRebirthValue = 1000000000
        elseif Value == "5B" then
            AutoRebirthValue = 5000000000
        elseif Value == "25B" then
            AutoRebirthValue = 25000000000
        elseif Value == "50B" then
            AutoRebirthValue = 50000000000
        elseif Value == "150B" then
            AutoRebirthValue = 150000000000
        elseif Value == "750B" then
            AutoRebirthValue = 750000000000
        elseif Value == "3.5T" then
            AutoRebirthValue = 3500000000000
        elseif Value == "20T" then
            AutoRebirthValue = 20000000000000
        elseif Value == "100T" then
            AutoRebirthValue = 100000000000000
        elseif Value == "500T" then
            AutoRebirthValue = 500000000000000
        elseif Value == "2.5Qa" then
            AutoRebirthValue = 2500000000000000
        elseif Value == "15Qa" then
            AutoRebirthValue = 15000000000000000
        elseif Value == "75Qa" then
            AutoRebirthValue = 75000000000000000
        elseif Value == "375Qa" then
            AutoRebirthValue = 375000000000000000
        elseif Value == "2.5Qi" then
            AutoRebirthValue = 2500000000000000000
        elseif Value == "15Qi" then
            AutoRebirthValue = 15000000000000000000
        elseif Value == "75Qi" then
            AutoRebirthValue = 75000000000000000000
        elseif Value == "375Qi" then
            AutoRebirthValue = 375000000000000000000
        elseif Value == "2Sx" then
            AutoRebirthValue = 2.e+21
        elseif Value == "10Sx" then
            AutoRebirthValue = 1.e+22
        elseif Value == "50Sx" then
            AutoRebirthValue = 5.e+22
        elseif Value == "250Sx" then
            AutoRebirthValue = 2.5e+23
        elseif Value == "1.5Sp" then
            AutoRebirthValue = 1.5e+24
        elseif Value == "20Sp" then
            AutoRebirthValue = 2.e+25
        elseif Value == "100Sp" then
            AutoRebirthValue = 1.e+26
        elseif Value == "600Sp" then
            AutoRebirthValue = 6.e+26
        elseif Value == "3Oc" then
            AutoRebirthValue = 3.e+27
        elseif Value == "18Oc" then
            AutoRebirthValue = 1.8e+28
        elseif Value == "90OC" then
            AutoRebirthValue = 9.e+28
        elseif Value == "500Oc" then
            AutoRebirthValue = 5.e+29
        elseif Value == "2.5No" then
            AutoRebirthValue = 2.5e+30
        elseif Value == "15No" then
            AutoRebirthValue = 1.5e+31
        elseif Value == "75No" then
            AutoRebirthValue = 7.5e+31
        elseif Value == "450No" then
            AutoRebirthValue = 4.5e+32
        elseif Value == "2.5Dc" then
            AutoRebirthValue = 2.5e+33
        end
	end
})

ManualAutoClick = false
function ManualAutoClickFunction(X, Y, WaitTime)
    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
    wait(tonumber(WaitTime))
end

AutoFarmTab:AddBind({
	Name = "Fast Autoclick",
	Default = Enum.KeyCode.F,
	Hold = false,
	Callback = function()
		if ManualAutoClick == false then
            ManualAutoClick = true
            local X, Y = Mouse.X, Mouse.Y + 10
            repeat
                ManualAutoClickFunction(X, Y + 10, 0.1)
            until ManualAutoClick == false
        else
            ManualAutoClick = false
        end
	end  
})

-- Pets tab

local AutoPet = false
local CurrentAutoPet = nil

function PurchaseEgg(EggLocation)
    local Egg = EggLocation
    local ohBoolean2 = false
    local ohBoolean3 = false

    game:GetService("ReplicatedStorage").Events.Client.purchaseEgg2:InvokeServer(Egg, ohBoolean2, ohBoolean3)
end

PetsTab:AddToggle({
    Name = "Auto Open Eggs",
    Default = false,
    Callback = function(Value)
        if Value then
            AutoPet = true
            repeat PurchaseEgg(CurrentAutoPet) wait(0.3) until AutoPet == false
        else
            AutoPet = false
        end
    end
})

PetsTab:AddDropdown({
    Name = "Egg Selector",
    Default = "",
    Options = {"Event Egg (300Qa)", "Basic Egg (250)", "Earth Egg (2.5k)", "Sun God Egg (1.5M)", "Frozen Arctic Egg (25M)", "Lava Dragon Egg (2B)", "Treasure Egg (65B)", "Space Guardian Egg (3.75T)", "Treeland Egg (100T)", "Ice Cream Egg (1.9Qa)", "Atlantis Egg (62Qa)", "Tropical Egg (1.1Sx)", "Bee Egg (60Sx)", "Galaxy Egg (5Sp)", "Tech Egg (1No)", "Robot Egg (500No)", "Chemical Egg (150Dc)", "Steampunk Egg (100Ud)", "Holographic Egg (60.9Td)", "Music Egg (75Qad)", "Hacker Egg (2.08Sd)", "Mars Egg (606.06Sd)", "Time Egg (90St)", "Dinosaur Egg (150O)", "Egypt Egg (600O)", "Ice Age Egg (15N)", "Samurai Egg (375N)", "Rome Egg (10v)"},
    Callback = function(Value)
        if Value == "Event Egg (300Qa)" then
            CurrentAutoPet = workspace.Eggs["300M Event"]
        elseif Value == "Basic Egg (250)" then
            CurrentAutoPet = workspace.Eggs.Basic
        elseif Value == "Earth Egg (2.5k)" then
            CurrentAutoPet = workspace.Eggs.Earth
        elseif Value == "Sun God Egg (1.5M)" then
            CurrentAutoPet = workspace.Eggs["Sun God"]
        elseif Value == "Frozen Arctic Egg (25M)" then
            CurrentAutoPet = workspace.Eggs["Frozen Arctic"]
        elseif Value == "Lava Dragon Egg (2B)" then
            CurrentAutoPet = workspace.Eggs["Lava Dragon"]
        elseif Value == "Treasure Egg (65B)" then
            CurrentAutoPet = workspace.Eggs.Treasure
        elseif Value == "Space Guardian Egg (3.75T)" then
            CurrentAutoPet = workspace.Eggs["Space Guardian"]
        elseif Value == "Treeland Egg (100T)" then
            CurrentAutoPet = workspace.Eggs.Treeland
        elseif Value == "Ice Cream Egg (1.9Qa)" then
            CurrentAutoPet = workspace.Eggs["Ice Cream"]
        elseif Value == "Atlantis Egg (62Qa)" then
            CurrentAutoPet = workspace.Eggs.Atlantis
        elseif Value == "Tropical Egg (1.1Sx)" then
            CurrentAutoPet = workspace.Eggs.Tropical
        elseif Value == "Bee Egg (60Sx)" then
            CurrentAutoPet = workspace.Eggs.Bee
        elseif Value == "Galaxy Egg (5Sp)" then
            CurrentAutoPet = workspace.Eggs.Galaxy
        elseif Value == "Tech Egg (1No)" then
            CurrentAutoPet = workspace.Eggs.Tech
        elseif Value == "Robot Egg (500No)" then
            CurrentAutoPet = workspace.Eggs.Robot
        elseif Value == "Chemical Egg (150Dc)" then
            CurrentAutoPet = workspace.Eggs.Chemical
        elseif Value == "Steampunk Egg (100Ud)" then
            CurrentAutoPet = workspace.Eggs.Steampunk
        elseif Value == "Holographic Egg (60.9Td)" then
            CurrentAutoPet = workspace.Eggs.Holographic
        elseif Value == "Music Egg (75Qad)" then
            CurrentAutoPet = workspace.Eggs.Music
        elseif Value == "Hacker Egg (2.08Sd)" then
            CurrentAutoPet = workspace.Eggs.Hacker
        elseif Value == "Mars Egg (606.06Sd)" then
            CurrentAutoPet = workspace.Eggs.Mars
        elseif Value == "Time Egg (90St)" then
            CurrentAutoPet = workspace.Eggs.Time
        elseif Value == "Dinosaur Egg (150O)" then
            CurrentAutoPet = workspace.Eggs.Dinosaur
        elseif Value == "Egypt Egg (600O)" then
            CurrentAutoPet = workspace.Eggs.Egypt
        elseif Value == "Ice Age Egg (15N)" then
            CurrentAutoPet = workspace.Eggs["Ice Age"]
        elseif Value == "Samurai Egg (375N)" then
            CurrentAutoPet = workspace.Eggs.Samurai
        elseif Value == "Rome Egg (10v)" then
            CurrentAutoPet = workspace.Eggs.Rome
        end
    end
})

-- Teleport tab
TeleportTab:AddDropdown({
    Name = "World 1",
    Default = "",
    Options = {"Ground", "Island 1", "Island 2", "Island 3", "Island 4", "Island 5", "Island 6", "Island 7", "Island 8", "Island 9", "Island 10", "Island 11"},
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        if Value == "Ground" then
            Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 4, -1))
            Notify("Teleported", "Teleported to the ground", "7183903911", 2.5)
        elseif Value == "Island 1" then
            -- Teleport to 6, 1282, -77
            Character.HumanoidRootPart.CFrame = CFrame.new(6, 1282, -77)
            Notify("Teleported", "You have been teleported to Island 1", "7183903911", 2.5)
        elseif Value == "Island 2" then
            -- Teleport to -78, 2529, -34
            Character.HumanoidRootPart.CFrame = CFrame.new(-78, 2529, -34)
            Notify("Teleported", "You have been teleported to Island 2", "7183903911", 2.5)
        elseif Value == "Island 3" then
            -- Teleport to -141, 4365, -29
            Character.HumanoidRootPart.CFrame = CFrame.new(-141, 4365, -29)
            Notify("Teleported", "You have been teleported to Island 3", "7183903911", 2.5)
        elseif Value == "Island 4" then
            -- Teleport to -138, 6974, 13
            Character.HumanoidRootPart.CFrame = CFrame.new(-138, 6974, 13)
            Notify("Teleported", "You have been teleported to Island 4", "7183903911", 2.5)
        elseif Value == "Island 5" then
            -- Teleport to -95, 10089, -1
            Character.HumanoidRootPart.CFrame = CFrame.new(-95, 10089, -1)
            Notify("Teleported", "You have been teleported to Island 5", "7183903911", 2.5)
        elseif Value == "Island 6" then
            -- Teleport to -171, 13128, -1
            Character.HumanoidRootPart.CFrame = CFrame.new(-171, 13128, -1)
            Notify("Teleported", "You have been teleported to Island 6", "7183903911", 2.5)
        elseif Value == "Island 7" then
            -- Teleport to -118, 16259, 0
            Character.HumanoidRootPart.CFrame = CFrame.new(-118, 16259, 0)
            Notify("Teleported", "You have been teleported to Island 7", "7183903911", 2.5)
        elseif Value == "Island 8" then
            -- Teleport to -73, 19357, -0
            Character.HumanoidRootPart.CFrame = CFrame.new(-73, 19357, -0)
            Notify("Teleported", "You have been teleported to Island 8", "7183903911", 2.5)
        elseif Value == "Island 9" then
            -- Teleport to -72, 21735, 8
            Character.HumanoidRootPart.CFrame = CFrame.new(-72, 21735, 8)
            Notify("Teleported", "You have been teleported to Island 9", "7183903911", 2.5)
        elseif Value == "Island 10" then
            -- Teleport to -83, 23520, 8
            Character.HumanoidRootPart.CFrame = CFrame.new(-83, 23520, 8)
            Notify("Teleported", "You have been teleported to Island 10", "7183903911", 2.5)
        elseif Value == "Island 11" then
            -- Teleport to -94, 24893, -1
            Character.HumanoidRootPart.CFrame = CFrame.new(-94, 24893, -1)
            Notify("Teleported", "You have been teleported to Island 11", "7183903911", 2.5)
        end
	end
})

TeleportTab:AddDropdown({
    Name = "World 2",
    Default = "",
    Options = {"Ground", "Robot Island (Island 1)", "Chemical Island (Island 2)", "Steampunk Island (Island 3)", "Holographic Island (Island 4)", "Music Island (Island 5)", "Hacker Island (Island 6)", "Mars Island (Island 7)"},
    Callback = function(Value)
        if Value == "Ground" then
            -- Teleport to -20000, 12, 0
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20000, 12, 0)
            Notify("Teleported", "Teleported to the ground", "7183903911", 2.5)
        elseif Value == "Robot Island (Island 1)" then
            -- Teleport to -20010, 947, -8
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20010, 947, -8)
            Notify("Teleported", "You have been teleported to Robot Island (Island 1)", "7183903911", 2.5)
        elseif Value == "Chemical Island (Island 2)" then
            -- Teleport to -19994, 1990, -30
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19994, 1990, -30)
            Notify("Teleported", "You have been teleported to Chemical Island (Island 2)", "7183903911", 2.5)
        elseif Value == "Steampunk Island (Island 3)" then
            -- Teleport to -19997, 3305, -52
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19997, 3305, -52)
            Notify("Teleported", "You have been teleported to Steampunk Island (Island 3)", "7183903911", 2.5)
        elseif Value == "Holographic Island (Island 4)" then
            -- Teleport to -19991, 4875, -84
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19991, 4875, -84)
            Notify("Teleported", "You have been teleported to Holographic Island (Island 4)", "7183903911", 2.5)
        elseif Value == "Music Island (Island 5)" then
            -- Teleport to -19995, 6655, -79
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19995, 6655, -79)
            Notify("Teleported", "You have been teleported to Music Island (Island 5)", "7183903911", 2.5)
        elseif Value == "Hacker Island (Island 6)" then
            -- Teleport to -19996, 8831, -139
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19996, 8831, -139)
            Notify("Teleported", "You have been teleported to Hacker Island (Island 6)", "7183903911", 2.5)
        elseif Value == "Mars Island (Island 7)" then
            -- Teleport to -19996, 11046, -185
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19996, 11046, -185)
            Notify("Teleported", "You have been teleported to Mars Island (Island 7)", "7183903911", 2.5)
        end
    end
})

TeleportTab:AddDropdown({
    Name = "World 3",
    Default = "",
    Options = {"Ground", "Dinosaur Island (Island 1)", "Egypt Island (Island 2)", "Ice Age Island (Island 3)", "Samurai Island (Island 4)", "Rome Island (Island 5)"},
    Callback = function(Value)
        if Value == "Ground" then
            -- Teleport to -9924, 12, -1853
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9924, 12, -1853)
            Notify("Teleported", "Teleported to the ground", "7183903911", 2.5)
        elseif Value == "Dinosaur Island (Island 1)" then
            -- Teleport to -9930, 984, -1860
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9930, 984, -1860)
            Notify("Teleported", "You have been teleported to Dinosaur Island (Island 1)", "7183903911", 2.5)
        elseif Value == "Egypt Island (Island 2)" then
            -- Teleport to -9943, 2022, -1867
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9943, 2022, -1867)
            Notify("Teleported", "You have been teleported to Egypt Island (Island 2)", "7183903911", 2.5)
        elseif Value == "Ice Age Island (Island 3)" then
            -- Teleport to -9939, 3269, -1923
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9939, 3269, -1923)
            Notify("Teleported", "You have been teleported to Ice Age Island (Island 3)", "7183903911", 2.5)
        elseif Value == "Samurai Island (Island 4)" then
            -- Teleport to -9937, 4717, -1955
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9937, 4717, -1955)
            Notify("Teleported", "You have been teleported to Samurai Island (Island 4)", "7183903911", 2.5)
        elseif Value == "Rome Island (Island 5)" then
            -- Teleport to -9939, 6367, -1993
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9939, 6367, -1993)
            Notify("Teleported", "You have been teleported to Rome Island (Island 5)", "7183903911", 2.5)
        end
    end
})

-- Local Player tab

LocalPlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 22,
	Max = 200,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		Char.Humanoid.WalkSpeed = tonumber(Value)
    end    
})

LocalPlayerTab:AddSlider({
    Name = "Jump Power",
    Min = 50,
    Max = 500,
    Default = 5,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jump Power",
    Callback = function(Value)
        Char.Humanoid.JumpPower = tonumber(Value)
    end    
})

LocalPlayerTab:AddButton({
    Name = "Remove purchase prompts",
    Callback = function()
        game.CoreGui.PurchasePrompt.Enabled = false
    end
})

CreditsTab:AddParagraph("Credits","eggg#5231 - Main Developer\n")



Notify("Loaded!", "Eggg hub has been loaded. 😎The Discord invite has been copied to your clipboard.", "0", 5)
setclipboard("https://discord.gg/EZ7jHkHjyX")

OrionLib:Init()