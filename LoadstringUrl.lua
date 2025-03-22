local Map = {
  ["Information"] = {
    Discord = "nil",
    YouTube = "nil"
  },
  [90823899207715] = {
    Url = "your_github_link_here",
    Status = "🔵 [Beta]"
  }
}

if Map[game.PlaceId] then
    loadstring(game:HttpGet(Map[game.PlaceId].Url))()
else
    game.Players.LocalPlayer:Kick("Not Supported Map")
end
