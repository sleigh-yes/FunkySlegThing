local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

guns = {
   "Imaginary Gun",
   "USP",
   "XM1014",
   "MPX",
   "M24 Sniper",
   "UMP-9",
   "M4 Carbine",
   "Vector CRB", --I dont own SS. Unsure
   "P90", --I dont own GO. Unsure
   "M4A1", --I dont own MO. Unsure
   "Silenced TAR21",
   "USP Silenced",
   "Silver Intervention",
   "Silver Deagle",
   --Executive Weapon Chamber
   "Silver M4A1 Silenced",
   "Galil Special",
   "M4A1 Special",
   "Silenced TAR21 Special",
   "UMP45 Special",
   "P90 Special",
   "XM1014 Special",
   "Energy TPPS", --I dont own FD.
   "Energy BPS", --I dont own FD.
   "Gold F2000", --I dont own FD.
   --FD Weapons 
   "Gold Barrett 50 Cal",
   "Gold Deagle",
   --Rebels
   "AK74",
   "Colt Python",
   "Spy USP",
   "AK74 Tactical",
   "Silenced CZ75",
   "VSS Vintorez",
   "Lupara",
   "RPK",
   "Tec-9",
   "Demonic AK-12",
   "DAO-12",
   "SW40",
   "Demonic ARX-160",
   "AA-12",
   --Rest are Unkown.
   "Moderator Shotgun" --Did this to fuck around
}

local Window = Rayfield:CreateWindow({
	Name = "Sleg Funky Project",
	LoadingTitle = "Rayfield NBTF Menu",
	LoadingSubtitle = "by Sleg using Rayfield API",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SlegFunky", -- Create a custom folder for your hub/game
		FileName = "Sleg"
	},
        Discord = {
        	Enabled = false,
        	Invite = "N/A", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sleg Protection System",
		Subtitle = "Key System",
		Note = "Sleg should have given you a key",
		FileName = "SlegKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "MipIsAFurry"
	}
})

Rayfield:Notify({
    Title = "Hai",
    Content = "Stuff like uh NumProjectiles only works for shotguns",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "ok",
            Callback = function()
                print("The user tapped ok")
            end
		},
		DidntAsk = {
            Name = "Didnt ask",
            Callback = function()
                print("The user tapped Didnt Ask")
            end
		},
	},
})

local Tab = Window:CreateTab("Gun Modding", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "Note:", Content = "I made this as a joke but it looks good now moment so uh yeah"})

local Button = Tab:CreateButton({
	Name = "Mod Gun (No Customize)",
	Callback = function()
		local nothingvalues = {
                "RecoilDecay",
                "RecoilMax",
                "RecoilMin",
                "ShotCooldown",
                "TotalRecoilMax",
                "MaxSpread",
                "MinSpread"
            }

            local infvalues = {"HitDamage", "MaxDistance"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(nothingvalues, v2.Name) ~= nil then
                            v2.Value = 0
                        end
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = 9999999999999999
                        end
                    end
                end
            end
	end,
})

local Section = Tab:CreateSection("Advanced Customization")

local Paragraph = Tab:CreateParagraph({Title = "Whoa a Text thing", Content = "I made this in a rush. Some things might not be working"})

local Section = Tab:CreateSection("Recoil Control")
--Recoil Control
local Input = Tab:CreateInput({
	Name = "RecoilMin",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMin"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "RecoilMax",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMax"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

--Spread Control
local Section = Tab:CreateSection("Spread Control")

local Input = Tab:CreateInput({
	Name = "MinSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MinSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "MaxSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MaxSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Section = Tab:CreateSection("The Other Customization")

local Input = Tab:CreateInput({
	Name = "ShotCooldown",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"ShotCooldown"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})


local Input = Tab:CreateInput({
	Name = "NumProjectiles",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"NumProjectiles"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Tab = Window:CreateTab("Morph Control", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
	Name = "Remove Tag",
	Callback = function()
		local model = game.Players.LocalPlayer.Character.HumanoidRootPart.MainNametag
        local childs = model:GetDescendants()
        model.Frame.Plaque:Destroy()
            for I,v in pairs(childs) do 
	            if v:IsA("TextLabel") and v.Name ~= "PlayerAuthority" then 
		            v:Destroy()
        	end
        end
	end,
})


local Section = Tab:CreateSection("Main Body Control")

local Button = Tab:CreateButton({
	Name = "Remove All Morph Parts",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})


local Button = Tab:CreateButton({
	Name = "Remove Head Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "Head" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Torso Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LowerTorso" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "UpperTorso" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Section = Tab:CreateSection("Arm Morph Control")

local Button = Tab:CreateButton({
	Name = "Remove Right Arm Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightHand" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightLowerArm" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightUpperArm" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Left Arm Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftHand" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftLowerArm" then 
		        v:ClearAllChildren()
	        end
        end
        
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftUpperArm" then 
		        v:ClearAllChildren()
	        end
        end
    end,
})

local Section = Tab:CreateSection("Leg Morph Control")

local Button = Tab:CreateButton({
	Name = "Remove Right Leg Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightFoot" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightLowerLeg" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightUpperLeg" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Left Leg Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftFoot" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftUpperLeg" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftLowerLeg" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Tab = Window:CreateTab("Fast Tool Grabber", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "For this to work:", Content = "Open :tools then close it for this to work. Only need to do this once"})

local Section = Tab:CreateSection("Tools")

local Button = Tab:CreateButton({
	Name = "Get Level 99 Keycard",
	Callback = function()
	    local args = {
        [1] = 6
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Moderator Shotgun",
	Callback = function()
	    local args = {
        [1] = 1
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Binoculars",
	Callback = function()
	    local args = {
        [1] = 5
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Virus Kit",
	Callback = function()
	    local args = {
        [1] = 4
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get System Repair Kit",
	Callback = function()
	    local args = {
        [1] = 3
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Maglight",
	Callback = function()
	    local args = {
        [1] = 2
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Tab = Window:CreateTab("Teleport to Places", 4483362458) -- Title, Image

local PlayerS = game:GetService("Players")
local char = PlayerS.LocalPlayer.Character

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local Section = Tab:CreateSection("Facility")

local Button = Tab:CreateButton({
	Name = "Launch Control",
	Callback = function()
		local tpX,tpY,tpZ = 684, 374, -416
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Launch Control Roof",
	Callback = function()
		local tpX,tpY,tpZ = 610, 445, -425
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Ground Zero",
	Callback = function()
		local tpX,tpY,tpZ = -333, 241, -377
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Core Control",
	Callback = function()
		local tpX,tpY,tpZ = 1104, 298, 1092
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Power Center",
	Callback = function()
		local tpX,tpY,tpZ = 1281, 334, 111
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Data Center",
	Callback = function()
		local tpX,tpY,tpZ = 1340, 334, -345
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Cafeteria",
	Callback = function()
		local tpX,tpY,tpZ = 1055, 334, -422
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Hospital",
	Callback = function()
		local tpX,tpY,tpZ = 1096, 334, -689
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Barracks",
	Callback = function()
		local tpX,tpY,tpZ = 745, 371, -90
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Receiving Center",
	Callback = function()
		local tpX,tpY,tpZ = 745, 371, -90
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Maintenance Offices",
	Callback = function()
		local tpX,tpY,tpZ = 1663, 334, -423
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Logistics Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1415, 334, -2477
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Executive Area")

local Button = Tab:CreateButton({
	Name = "Armory (Council)",
	Callback = function()
		local tpX,tpY,tpZ = 775, 334, -804
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Armory (Director)",
	Callback = function()
		local tpX,tpY,tpZ = 775, 334, -804
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Garage",
	Callback = function()
		local tpX,tpY,tpZ = 813, 334, -742
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Executive Offices",
	Callback = function()
		local tpX,tpY,tpZ = 736, 381, -759
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Brodcasting Room",
	Callback = function()
		local tpX,tpY,tpZ = 721, 381, -690
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Master Teleport Room",
	Callback = function()
		local tpX,tpY,tpZ = 1161, 19, -713
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Emergency Elevator",
	Callback = function()
		local tpX,tpY,tpZ = 1099, 422, -824
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Security")

local Button = Tab:CreateButton({
	Name = "Internal Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1329, 334, -894
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "External Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1367, 334, -1305
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Security Offices",
	Callback = function()
		local tpX,tpY,tpZ = 1338, 398, -641
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "External Gate",
	Callback = function()
		local tpX,tpY,tpZ = 1484, 334, -1328
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Internal Gate",
	Callback = function()
		local tpX,tpY,tpZ = 1484, 334, -857
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Internal Gate Mk2",
	Callback = function()
		local tpX,tpY,tpZ = 981, 334, -979
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Watchtowers")

local Button = Tab:CreateButton({
	Name = "Watchtower 1",
	Callback = function()
		local tpX,tpY,tpZ = 1685, 370, -1067
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 2",
	Callback = function()
		local tpX,tpY,tpZ = 788, 375, -1410
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 3",
	Callback = function()
		local tpX,tpY,tpZ = 517, 370, -931
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 4",
	Callback = function()
		local tpX,tpY,tpZ = 227, 370, 438
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 5",
	Callback = function()
		local tpX,tpY,tpZ = 1381, 411, -1272
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 6",
	Callback = function()
		local tpX,tpY,tpZ = 1005, 360, -7
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Other Things")

local Button = Tab:CreateButton({
	Name = "Thanks for Playing",
	Callback = function()
		local tpX,tpY,tpZ = 227, 370, 438
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Old Bunker Teleported Room",
	Callback = function()
		local tpX,tpY,tpZ = -640, 334, 732
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Top of the Connection Tower",
	Callback = function()
		local tpX,tpY,tpZ = 1338, 570, -333
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Tower?",
	Callback = function()
		local tpX,tpY,tpZ = 1670, 379, -678
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Rebellion")

local Button = Tab:CreateButton({
	Name = "Gas Station",
	Callback = function()
		local tpX,tpY,tpZ = 963, 359, -2795
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Pirate Brodcast",
	Callback = function()
		local tpX,tpY,tpZ = 968, 409, -2824
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Underground Gas Station",
	Callback = function()
		local tpX,tpY,tpZ = 1011, 325, -2830
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})
