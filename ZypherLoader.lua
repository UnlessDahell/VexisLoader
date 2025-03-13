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
      Invite = "PNuYYAtd", 
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
      loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/refs/heads/main/Fearise_Hub_Bluelock_newloader.lua", true))()
   end,
})

Rayfield:Notify({
   Title = "Zypher Notifying",
   Content = "Please don't forget to join our community server!\n(https://discord.gg/PNuYYAtd)", 
   Duration = 15,
   Image = 4483362458,
})

local Section2 = MainTab:CreateSection("Our Discord Community Server")

local Button2 = MainTab:CreateButton({
   Name = "Discord Link Click to Get Here!",
   Callback = function()
      setclipboard("https://discord.gg/PNuYYAtd")
   end,
})

local Section = DestroyTab:CreateSection("Destroy This Loader")
Section:Set("THIS LOADER WILL GONE IF YOU CLICK BELOW BUTTON!")

local Button = DestroyTab:CreateButton({
   Name = "Destroy Loader",
   Callback = function()
   Rayfield:Destroy()
   end,
})
