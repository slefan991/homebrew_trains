local coords = {-173.63, 626.00, 113.00}
local heading = 220.55

local conductorPed = GetHashKey('S_M_M_TrainStationWorker_01')
RequestModel(conductorPed)

while not HasModelLoaded(conductorPed) do
    Citizen.Wait(50)
end

if IsModelValid(conductorPed) then
    local spawnedPed = CreatePed(conductorPed, coords[1], coords[2], coords[3], heading, false, false, false, false)

    repeat
      Citizen.Wait(10)
    until DoesEntityExist(spawnedPed)

    Citizen.InvokeNative(0x283978A15512B2FE, spawnedPed, true)
    SetEntityCanBeDamaged(spawnedPed, false)
    SetEntityInvincible(spawnedPed, true)
    SetBlockingOfNonTemporaryEvents(spawnedPed, true)
    FreezeEntityPosition(spawnedPed, true)
    SetPedCanRagdoll(spawnedPed, false)

    ClearPedTasksImmediately(spawnedPed)
    TaskStandStill(spawnedPed, -1)

    local coords = GetEntityCoords(PlayerPedId())
    local blip = BlipAddForCoords(`BLIP_STYLE_SHOP`, coords[1], coords[2], coords[3])
    SetBlipSprite(blip, `blip_ambient_train`, true)
end



Citizen.CreateThread(function() 
while true do
  local isUIOpen = false
  local playerCoords = GetEntityCoords(PlayerPedId())
  local targetCoords = vector3(coords[1], coords[2], coords[3])
  local talkRange = 2.0;

  if #(playerCoords - targetCoords) < talkRange then
    
  end
  Citizen.Wait(100)
end end)