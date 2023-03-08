ESX = exports["es_extended"]:getSharedObject()
--CHAT

--NOTIFY

--JOBNOTIFY

--SERVERNOTIFY

--STATUS
Citizen.CreateThread(function()
    if Config.UseStatusNotify then
        while true do
            Citizen.Wait(120000)

            TriggerEvent('esx_status:getStatus', 'hunger', function(status)
                if status.val < Config.HungerAlertValue then
                    TriggerEvent("GMD_chatsystem:notify", 'hunger')
                    PlaySound(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0, 0, 1)
                end
            end)

            TriggerEvent('esx_status:getStatus', 'thirst', function(status)
                if status.val < Config.ThirstAlertValue then
                    TriggerEvent("GMD_chatsystem:notify", 'thirst')
                    PlaySound(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0, 0, 1)
                end
            end)
        end
    end
end)
