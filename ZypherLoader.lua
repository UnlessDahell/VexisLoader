local Rayfield, rayfieldError = loadstring(game:HttpGet('https://sirius.menu/rayfield', true))()

if not Rayfield then
    warn("Failed to load Rayfield:", rayfieldError)
    return
end

local Window = Rayfield:CreateWindow({
    Name = "Zypher Script Loader",
    LoadingTitle = "Initializing Zypher Hub...",
    LoadingSubtitle = "Loading modules and scripts",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "ZypherHubFile",
        FileName = "ZypherLoader"
    },
    Discord = {
        Enabled = true,
        Invite = "aTNg2Dcw",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Zypher Access System",
        Subtitle = "Enter your key below",
        Note = "Join discord.gg/aTNg2Dcw for keys",
        FileName = "ZypherKey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Zypher-DeadRails-Beta"}
    }
})

local function SafeLoadScript(url)
    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)
    
    if not success then
        return false, "HTTP Error: "..tostring(response)
    end
    
    local success, err = pcall(loadstring, response)
    if not success then
        return false, "Load Error: "..tostring(err)
    end
    
    return true
end

local MainTab = Window:CreateTab("Script Loader", 132272873219669)

local MainSection = MainTab:CreateSection("Main Scripts")

MainTab:CreateButton({
    Name = "Fearise Hub: Blue Lock Rivals",
    Callback = function()
        Rayfield:Notify({
            Title = "Loading",
            Content = "Starting Fearise Hub...",
            Duration = 3
        })
        
        local success, err = SafeLoadScript("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/main/Fearise_Hub_Bluelock_newloader.lua")
        if not success then
            Rayfield:Notify({
                Title = "Load Failed",
                Content = err,
                Duration = 6,
                Image = 4483362458
            })
        end
    end
})

MainTab:CreateButton({
    Name = "Zypher Hub: Forsaken (Preview Ended)",
    Callback = function()
        Rayfield:Notify({
            Title = "Preview Ended",
            Content = "Full version coming soon!\nJoin discord.gg/aTNg2Dcw for updates",
            Duration = 6,
            Image = 4483362458
        })
    end
})

MainTab:CreateSection("Test Versions")

MainTab:CreateButton({
    Name = "Fearise PreUPD v3.2 (Beta)",
    Callback = function()
        Rayfield:Notify({
            Title = "Loading Beta",
            Content = "Starting test version...",
            Duration = 3
        })
        
        local success, err = SafeLoadScript("https://raw.githubusercontent.com/UnlessDahell/FeariseHub/main/PreUPD-FeariseHubV3.2.lua")
        if not success then
            Rayfield:Notify({
                Title = "Load Failed",
                Content = err,
                Duration = 6,
                Image = 4483362458
            })
        end
    end
})

MainTab:CreateSection("Upcoming Scripts")

MainTab:CreateButton({
    Name = "Dead Rails (Ver.Bug-Beta-1)",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/UnlessDahell/ZypherRails/refs/heads/main/ZypherDeadRails.lua",true))()
        Rayfield:Notify({
            Title = "In Development",
            Content = "Dead Rails is currently being developed!\nCheck discord.gg/aTNg2Dcw for updates",
            Duration = 6,
            Image = 4483362458
        })
    end
})

MainTab:CreateSection("Community")

MainTab:CreateButton({
    Name = "Copy Discord Invite",
    Callback = function()
        setclipboard("https://discord.gg/aTNg2Dcw")
        Rayfield:Notify({
            Title = "Copied!",
            Content = "Discord invite copied to clipboard",
            Duration = 3,
            Image = 4483362458
        })
    end
})

local DestroyTab = Window:CreateTab("Settings", 130985545137273)
DestroyTab:CreateSection("UI Controls")

DestroyTab:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end
})

Rayfield:Notify({
    Title = "Zypher Script Loader",
    Content = "Successfully loaded!\nJoin our Discord: discord.gg/aTNg2Dcw",
    Duration = 8,
    Image = 4483362458
})
