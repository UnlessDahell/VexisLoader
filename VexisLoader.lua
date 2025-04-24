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

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Vexis H | Loader",
    LoadingTitle = "Vexis H | Loading...",
    LoadingSubtitle = "Welcome! Thank for using for script!, " .. player.Name,
    Theme = "Light",
    
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "VexisHub",
        FileName = "Config"
    },
    Discord = {
        Enabled = true,
        Invite = ".gg/YVyfVYGR23",
        RememberJoins = true
    },
    KeySystem = false,
})

local MainTab = Window:CreateTab("Welcome To Vexis H", 4483362458)

MainTab:CreateParagraph({
    Title = "Welcome To Vexis H",
    Content = "We’re so happy you’re using our script! Feel free to join our community and help us grow ♥️"
})

MainTab:CreateParagraph({
    Title = "Your Quick Info",
    Content = string.format(
        "Username: %s\nUserId: %s\nAccount Age: %s\nGame: %s",
        player.Name,
        userId,
        getAccountAge(),
        getGameName()
    )
})

MainTab:CreateButton({
    Name = "Copy Discord Invite",
    Callback = function()
        setclipboard("https://discord.gg/YVyfVYGR23")
    end,
})

local LoadTab = Window:CreateTab("Vexis H Loader", 132272873219669)
local LoadSection = LoadTab:CreateSection("Main Loader")

local Button2 = LoadTab:CreateButton({
    Name = "Vexis H : Forsaken (Preview Ended) :",
    Callback = function()
        print("Preview ended now it's time to continue full version of Vexis H Forsaken")
    end,
})

local LoadSection2 = LoadTab:CreateSection("Dead Rails (Alpha)")

local Button4 = LoadTab:CreateButton({
    Name = "Vexis H : Dead Rails : (Beta-1.1) :",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/ZypherRails/refs/heads/main/ZypherDeadRails.lua",true))()
    end,
})

Rayfield:Notify({
    Title = "Vexis H Notifying",
    Content = "Please don't forget to join our community server!! (https://discord.gg/p5ynKu5f)",
    Duration = 25,
    Image = 4483362458,
})

local CommunitySection = LoadTab:CreateSection("Our Discord Community Server")

local Button5 = LoadTab:CreateButton({
    Name = "Discord Link Click to Get Here!",
    Callback = function()
        setclipboard("https://discord.gg/aTNg2Dcw")
    end,
})

local DestroyTab = Window:CreateTab("Destroy This Loader Ui", 130985545137273)
local DestroySection = DestroyTab:CreateSection("Destroy This Loader")

local DestroyButton = DestroyTab:CreateButton({
    Name = "Destroy Loader",
    Callback = function()
        Rayfield:Destroy()
    end,
})
