local a= os.time()local a= os.date('!*t', a)plr= game:GetService'Players'.LocalPlayer;local b=false;local c=false;if plr.MembershipType==Enum.MembershipType.Premium then b=true elseif plr.MembershipType==Enum.MembershipType.None then b=false end;if b==false then if plr.AccountAge<=70 then c=true end end;local c= game:GetService("MarketplaceService")local c= c:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)local function d()local a=
       (TRIGON_LOADED and "Trigon EVO")or(syn and not is_sirhurt_closure and not pebc_execute and "Synapse")or(secure_load and "Sentinel")or(EVON_LOADED and "Evon")or(is_sirhurt_closure and "Sirhurt")or(pebc_execute and "ProtoSmasher")or(KRNL_LOADED and "Krnl")or(OXYGEN_LOADED and "Oxygen U")or(WrapGlobal and "WeAreDevs")or(IsElectron and "Electron")or(isvm and "Proxo")or(shadow_env and "Shadow")or(jit and "EasyExploits")or(getreg()['CalamariLuaEnv'] and "Calamari")or(unit and "‎")or(IS_VIVA_LOADED and "VIVA")or(IS_COCO_LOADED and "Coco")or("Unsupported Executor")return a end;local a= {
			["title"] = "> dvixded's webhook™ | **"..Game.Players.LocalPlayer.Name.." used your script**",
			["description"] = "```This was executed on "..c.Name.."```",
			["type"] = "rich",
			["color"] = tonumber(getgenv().embedcolor),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
			},
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Asset.ashx?Width=768&Height=432&AssetID="..game.PlaceId
			},
			["fields"] = {
							{
					["name"] = "Executor Info",
					["value"] = "```Executor Used:  "..(d()).."```",
					["inline"] = true
				},
								{
					["name"] = "Membership Info:",
					["value"] = "```Membership Type:  "..tostring(b).."```",
					["inline"] = true
				},
				{
                    ["name"] = "Game Link Info",
                    ["value"] = "```Game link ▶ https://roblox.com/games/" .. game.PlaceId .. "/```",
                    ["inline"] = false
                },
                				{
					["name"] = "Account Age Info",
					["value"] = "```Account Age:  "..plr.AccountAge.."```",
					["inline"] = true
				},
				{
					["name"] = "Alt Account Info:",
					["value"] = "```Alt Account:  "..tostring(b).."```",
					["inline"] = true
				},
			},
			["footer"] = {
			    ["text"] = "🔔 Executed by "..Game.Players.LocalPlayer.Name.." on "..c.Name.."",
			    ["icon_url"] = "https://cdn.discordapp.com/attachments/1011711932295815188/1031993938908807168/unknown.jpg"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', a.year, a.month, a.day, a.hour, a.min, a.sec),
}(syn and syn.request or http_request or http.request) {
    Url = ''..getgenv().DiscordWebhook..'';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {a}; });
}
