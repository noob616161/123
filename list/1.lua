function Ren_Whitelist_Protected_Sys(src,kick)
    local notify = loadstring(game:HttpGet("https://pastebin.com/raw/DSi2P8Yc"))();
    local whitelist = loadstring(game:HttpGet(src))();
    
    local api = game:HttpGet("https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId)
    local REN_name = string.match(api,'name":"(.-)",')
    local REN_displayName = string.match(api,'displayName":"(.-)"')
    
    notify("忍工作室","正在验证白名单...",5)
    wait(2)
    
    if game.Players.LocalPlayer.Name == game.Players.LocalPlayer.Character.Name and game.Players.LocalPlayer.DisplayName == REN_displayName and game.Players.LocalPlayer.Name == REN_name and game.Players.LocalPlayer.Character.Name == REN_name and game.Players.LocalPlayer.CharacterAppearanceId == game.Players.LocalPlayer.UserId then
    if whitelist[game.Players.LocalPlayer.Name] then
        Ren_zt = true
    else
        game.Players.LocalPlayer:Kick(kick) 
    end
    else
        game.Players.LocalPlayer:Kick("不要改名")    
    end
    
    if Ren_zt == true then
    print('白名单验证成功')
    notify("忍工作室","验证白名单成功",2)
    wait(0.1)
    notify("忍工作室","正在加载脚本...",2)
    
    scprit()
    end
end

return Ren_Whitelist_Protected_Sys
