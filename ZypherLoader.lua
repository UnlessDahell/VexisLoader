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
      Enabled = true,
      FolderName = "Zypher",  
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
      Subtitle = "Zypher Hub Need More Member! (.gg/wDj3ve2K)",
      Note = "Join Our Discord for News And Key!! .gg/wDj3ve2K", 
      FileName = "ZTeam", 
      SaveKey = true,  -- This should allow saving the key
      GrabKeyFromSite = false, 
      Key = {"Zypher-227-945"} 
   }
})

Rayfield.KeySystem.OnKeyAccepted = function(enteredKey)
   if Window.ConfigurationSaving.Enabled and Window.KeySettings.SaveKey then
      Rayfield:SaveConfiguration()
   end
end
