local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4 - The best script in 2024")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Mower Upgrader")
local T3 = wndw:Tab("Train")
local T4 = wndw:Tab("Hatch")

local workspace = game:GetService("Workspace")
local egg = {}
local bike = {}

lib:AddTable(workspace["Active"]["Bikes"],bike)
lib:AddTable(workspace["Active"]["Eggs"],egg)

T1:Toggle("Auto claim wins",false,function(value)
    _G.wins = value
    while wait() do
      if _G.wins == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["LawnService"]["RE"]["ClaimWins"]:FireServer(1)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["LawnService"]["RE"]["ClaimWins"]:FireServer(2)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["LawnService"]["RE"]["ClaimWins"]:FireServer(3)
  end
end)

T1:Toggle("Auto claim gifts",false,function(value)
    _G.cwins = value
    while wait() do
      if _G.cwins == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(1)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(2)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(3)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(4)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(5)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(6)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(7)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(8)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(9)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(10)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(11)
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardService"]["RE"]["ClaimGift"]:FireServer(12)
  end
end)

T2:Toggle("Auto upgrade mower",false,function(value)
    _G.mupg = value
    while wait() do
      if _G.mupg == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["MowerService"]["RE"]["Upgrade"]:FireServer()
  end
end)

T2:Toggle("Auto collect bolts",false,function(value)
    _G.cb = value
    while wait() do
      if _G.cb == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["MowerService"]["RE"]["ClaimBolt"]:FireServer(2)
  end
end)

T3:Dropdown("Select bikes",bike,function(value)
    _G.bikers = value
end)

T3:Toggle("Auto click",false,function(value)
    _G.tc = value
    while wait() do
      if _G.tc == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["TrainService"]["RE"]["Click"]:FireServer()
  end
end)

T3:Toggle("Ride bike",false,function(value)
    if value then
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["TrainService"]["RE"]["MountBike"]:FireServer(workspace["Active"]["Bikes"][_G.bikers])
    else
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["TrainService"]["RE"]["Unmount"]:FireServer()
    end
end)

T4:Dropdown("Select eggs",egg,function(value)
    _G.eggers = value
end)

T4:Toggle("Auto hatch",false,function(value)
    _G.egh = value
    while wait() do
      if _G.egh == false then break end
        game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["PetService"]["RF"]["Hatch"]:InvokeServer(workspace["Active"]["Eggs"][_G.eggers],1)
  end
end)
