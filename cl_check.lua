local display         = false
local identityChecked = false
nui_counter           = 0

RegisterNetEvent("moutain_identity:openIdentity")
AddEventHandler("moutain_identity:openIdentity", function(check, lastname, firstname, nationality, years)
    if check == true then
      MenuOpened      = true
      identityChecked = true
    elseif check == false then 
      MenuOpened = true
      SetDisplay(not display)
    end
end)

--[[
Citizen.CreateThread(function()
  PlayerID  = GetPlayerServerId(PlayerId())
	while not MenuOpened do 
      TriggerServerEvent('moutain_identity:checkIdentity', PlayerID)
      Citizen.Wait(Config.Timetocheck)
    end
end)]]--

function SetDisplay(bool)
  display    = bool
  SetNuiFocus(bool, bool)
  SendNUIMessage({
      type        = "ui",
      status      = bool
  })
end

RegisterNUICallback("exit", function(data)
  nui_open = false
  SetDisplay(false)
end)

RegisterNUICallback("make_character", function(data)
  PlayerID          = GetPlayerServerId(PlayerId())
  local firstname   = data.firstname
  local lastname    = data.lastname
  local nationality = data.nationality
  local years       = data.years
  local sex         = data.sex
  nui_open          = false
  SetDisplay(false) 
  -- STEP 01 : Creation DB Char Roleplay Datas
  TriggerServerEvent('moutain_identity:make_character', PlayerID, firstname, lastname, nationality, years, sex)
  local PlayerDatas = exports.infinity_core:GetPlayerSession(PlayerID)
  -- STEP 02 : LOAD des datas du joueur par default
  TriggerEvent("infinitycore:playerLoaded", 1,
  PlayerDatas._Rank, lastname, firstname, years, nationality, 
  PlayerDatas._Cash, PlayerDatas._Xp, PlayerDatas._Gold, PlayerDatas._Job, PlayerDatas._JobGrade, PlayerDatas._Inventory)
  -- STEP 03: Ouverture du Skin Creator
  TriggerEvent("infinity_skin:MakeMySkin", 1)
end)