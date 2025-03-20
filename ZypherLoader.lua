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
   Name = "Zypher Script Loader (.gg/wDj3ve2K)",
   Icon = 82284779245358, 
   LoadingTitle = "Wait until GUI setup",
   LoadingSubtitle = "by Sir.Zypher and Skider",
   Theme = "Serenity",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, 
      FileName = "Zypher"
   },

   Discord = {
      Enabled = false, 
      Invite = ".gg/wDj3ve2K", 
      RememberJoins = true 
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Zypher Hub Key system",
      Subtitle = "Zypher Hub Need More Member!",
      Note = "Join Our Discord for News And Key!! (https://discord.gg/wDj3ve2K)", 
      FileName = "ZTeam", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Zypher-227-945"} 
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
   Content = "Please don't forget to join our community server!\n(https://discord.gg/wDj3ve2K)", 
   Duration = 25,
   Image = 4483362458,
})

local CommunitySection = MainTab:CreateSection("Our Discord Community Server")

local Button2 = MainTab:CreateButton({
   Name = "Discord Link Click to Get Here!",
   Callback = function()
      setclipboard("https://discord.gg/PNuYYAtd")
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
