local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local player = Players.LocalPlayer
local userId = player.UserId

local function getAccountAge()
    return player.AccountAge .. " days"
end

local function getGameName()
    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    return (success and info and info.Name) or "Unknown"
end

local thumbUrl = "rbxthumb://type=AvatarHeadShot&id=" .. userId .. "&w=150&h=150"

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Vexis Hub | Script Hub",
    LoadingTitle = "Vexis Hub Loading...",
    LoadingSubtitle = "Welcome back, " .. player.Name,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "VexisHub",
        FileName = "Config"
    },
    Discord = {
        Enabled = true,
        Invite = "yourdiscordcode",
        RememberJoins = true
    },
    KeySystem = false,
})

local MainTab = Window:CreateTab("Main", 4483362458)

local function copyToClipboard(text)
    setclipboard(text)
    print("Just copied this to your clipboard: " .. text)
end

MainTab:CreateButton({
    Name = "Show Player Info & Copy Discord",
    Callback = function()
        MainTab:CreateParagraph({
            Title = "Your Info",
            Content = string.format(
                "Username: %s\nUserId: %s\nAccount Age: %s\nGame: %s",
                player.Name,
                userId,
                getAccountAge(),
                getGameName()
            )
        })
        copyToClipboard("https://discord.gg/YVyfVYGR23")
    end,
})

MainTab:CreateParagraph({
    Title = "Welcome To Vexis H",
    Content = "We’re so happy you’re using our script! Feel free to join our community and help us grow ♥️"
})

MainTab:CreateParagraph({
    Title = "Quick Info",
    Content = string.format("Username: %s\nUserId: %s", player.Name, userId)
})

local Paragraph = MainTab:CreateParagraph({Title = "Change Log", Content = "Vexis H : Dead Rails Dev Log 🪵 ( Beta-1.1 )

```
-- Main --
[+] Discord Link Button 

-- Aimbot (New Handler and Optimize Next Update) --
[+] Add WallCheck Toggle
[%] Rewrite Ignore Horse Toggle

-- Visual (Performance Issue) -- 
[#] Remove For Now While Rewriting

-- NoClip --
[%] Improvement NoClip
[%] Rewrite Keybind (Some How Not Show Up)
```
# **** What are these mean? ****


```

[ + ] Added/New
[ % ] Fixing/Update/Rewrite
[ # ] In dev/Testing/Plan to added
[ ? ] Unconfirmed 
[ ~ ] Rmoved (Temporary)
[ - ] Removed (Permanent)


```

This Major Update By !RENDER
And w/VoxLar"})

local GameTab = Window:CreateTab("Vexis Loader", 132272873219669)
local GameSection = MainTab:CreateSection("Main Loader")

local Button2 = GameTab:CreateButton({
    Name = "Vexis Hub : Forsaken (3 days launch) :",
    Callback = function()
        print("3 days see you")
    end,
})

GameTab:CreateLabel("Dead Rails (Test)")

local Button4 = MainTab:CreateButton({
    Name = "Vexis Hub : Dead Rails : (Beta-1.1) :",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/ZypherRails/refs/heads/main/ZypherDeadRails.lua",true))()
    end,
})

Rayfield:Notify({
    Title = "Vexis Notifying",
    Content = "Please don't forget to join our community server!! (https://discord.gg/YVyfVYGR23)",
    Duration = 25,
    Image = 4483362458,
})

local DestroyTab = Window:CreateTab("Destroy This Loader Ui", 130985545137273)
local DestroySection = DestroyTab:CreateSection("Destroy This Loader")

local DestroyButton = DestroyTab:CreateButton({
    Name = "Destroy Loader",
    Callback = function()
        Rayfield:Destroy()
    end,
})
