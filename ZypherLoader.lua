local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Zypher Script Loader (.gg/PNuYYAtd)",
   Icon = 8771702895, 
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
      Invite = "noinvitelink",
      RememberJoins = true 
   },

   KeySystem = false, 
   KeySettings = {
      Title = "Zypher Hub",
      Subtitle = "Loader has no key!",
      Note = "Join Discord for news!!", 
      FileName = "ZTeam", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"ZTeam"} 
   }
})

local MainTab = Window:CreateTab("Zypher Loader", 4483362458)
local Section = MainTab:CreateSection("Main Loader")

local Button = MainTab:CreateButton({
   Name = "Fearise Hub : Blue lock Rivals :",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/refs/heads/main/Fearise_Hub_Bluelock_newloader.lua",true))()
   end,
})

Rayfield:Notify({
   Title = "Zypher Notifying",
   Content = "Please don't forget to join our community server!
      (https://discord.gg/PNuYYAtd)",
   Duration = 6.5,
   Image = 4483362458,
})

local Section = MainTab:CreateSection("Our Dicord Community Server")

local Button = Tab:CreateButton({
   Name = "Discord Link Click to Get Here!",
   Callback = function()
   setclipboard("https://discord.gg/PNuYYAtd")
   end,
})
