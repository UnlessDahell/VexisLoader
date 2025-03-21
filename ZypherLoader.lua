if not game:IsLoaded() then
game.Loaded:Wait()
end

local success, Rayfield = pcall(function()
return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success then
warn("Failed to load Rayfield UI. Please check the URL or try again later.")
return
end

local Window = Rayfield:CreateWindow({
Name = "Zypher Script Loader (.gg/p5ynKu5f)",
Icon = 82284779245358,
LoadingTitle = "Wait until UI load up",
LoadingSubtitle = "by Sir.Zypher and Skider",
Theme = "Serenity",

DisableRayfieldPrompts = false,
DisableBuildWarnings = false,

ConfigurationSaving = {
Enabled = true,
FolderName = true,
FileName = "Zypher"
},

Discord = {
Enabled = false,
Invite = ".gg/p5ynKu5f",
RememberJoins = true
},

KeySystem = true,
KeySettings = {
Title = "Zypher Hub Key system (HOTFIX)",
Subtitle = "Zypher Hub Need More Member! (.gg/p5ynKu5f)",
Note = "Join Our Discord for News And Key!! .gg/p5ynKu5f",
FileName = "ZTeam",
SaveKey = true,
GrabKeyFromSite = false,
Key = {"Zypher-230-member"}
}
})

local MainTab = Window:CreateTab("Zypher Loader", 132272873219669)
local MainSection = MainTab:CreateSection("Main Loader")

local Button = MainTab:CreateButton({
Name = "Fearise Hub : Blue lock Rivals :",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/refs/heads/main/Fearise_Hub_Bluelock_newloader.lua", true))()
end,
})

Rayfield:Notify({
Title = "Zypher Notifying",
Content = "Please don't forget to join our community server!! (https://discord.gg/p5ynKu5f)",
Duration = 25,
Image = 4483362458,
})

local CommunitySection = MainTab:CreateSection("Our Discord Community Server")

local Button2 = MainTab:CreateButton({
Name = "Discord Link Click to Get Here!",
Callback = function()
setclipboard("https://discord.gg/p5ynKu5f")
end,
})

local DestroyTab = Window:CreateTab("Destroy This Loader Ui", 130985545137273)
local DestroySection = DestroyTab:CreateSection("Destroy This Loader")

local Button = DestroyTab:CreateButton({
Name = "Destroy Loader",
Callback = function()
Rayfield:Destroy()
end,
})
