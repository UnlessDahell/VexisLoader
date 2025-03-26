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
Name = "Zypher Script Loader (.gg/aTNg2Dcw)",
Icon = 82284779245358,
LoadingTitle = "Wait until UI load up",
LoadingSubtitle = "by Sir.Zypher and Eyes Sight",
Theme = "Serenity",

DisableRayfieldPrompts = false,
DisableBuildWarnings = false,

ConfigurationSaving = {
Enabled = false,
FolderName = Zypher,
FileName = "Zypher"
},

Discord = {
Enabled = false,
Invite = "https://discord.gg/aTNg2Dcw",
RememberJoins = true
},

KeySystem = true,
KeySettings = {
Title = "Zypher Hub Key system (Preview)",
Subtitle = "Zypher Hub Need Member! (.gg/aTNg2Dcw)",
Note = "Join Our Discord for News And Key!! .gg/aTNg2Dcw",
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

local Button2 = MainTab:CreateButton({
Name = "Zypher Hub : Forsaken (Preview Ended) :",
Callback = function()
print("Preview ended now it's time to continue full version of Zypher Forsaken")
end,
})

local FearisePreUPDSection = MainTab:CreateSection("This is PreUPDATE version before Update main one (Test Version)")

local Button3 = MainTab:CreateButton({
Name = "Fearise Hub PreUPD v3.2 (Test Version) :",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/refs/heads/main/PreUPD-FeariseHubV3.2.lua",true))()
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
setclipboard("https://discord.gg/aTNg2Dcw")
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
