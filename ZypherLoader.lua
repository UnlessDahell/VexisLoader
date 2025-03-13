local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Zypher Script Loader",
   Icon = 87717028958575, 
   LoadingTitle = "Wait untill GUI set up",
   LoadingSubtitle = "by Sir.Zypher and Skider",
   Theme = "Serenity",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = 
   ConfigurationSaving = {
      Enabled = false,
      FolderName = false, 
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
      Subtitle = "Loader have No key!",
      Note = "Join discord for news!!", 
      FileName = "ZTeam", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"ZTeam"} 
   }
})

local MainTab = Window:CreateTab("Zypher Loader", 4483362458)
local Section = MainTab:CreateSection("Main Loader")



