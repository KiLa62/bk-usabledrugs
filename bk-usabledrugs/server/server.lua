if Config.Framework == 'esx' then 
    ESX = exports['es_extended']:getSharedObject()
else
    QBCore = exports['qb-core']:GetCoreObject()
end

for i=1, #Config.Drugs, 1 do
    if Config.Framework == 'esx' then
        ESX.RegisterUsableItem(Config.Drugs[i].Item, function(source)
            local src = source
            local type = Config.Drugs[i].Type
            local effects = Config.Drugs[i].Effects
            local duration = Config.Drugs[i].Duration
            if Config.Drugs[i].RemoveOnUse then
                local xPlayer = ESX.GetPlayerFromId(src)
                xPlayer.removeInventoryItem(Config.Drugs[i].Item, 1)
            end
            
            TriggerClientEvent('bk-usabledrugs:drugEffects', src, type, effects, duration)
        end)
    else
        QBCore.Functions.CreateUseableItem(Config.Drugs[i].Item, function(source)
            local src = source
            local type = Config.Drugs[i].Type
            local effects = Config.Drugs[i].Effects
            local duration = Config.Drugs[i].Duration
            if Config.Drugs[i].RemoveOnUse then
                local Player = QBCore.Functions.GetPlayer(src)
                Player.Functions.RemoveItem(Config.Drugs[i].Item, 1)
            end
            
            TriggerClientEvent('bk-usabledrugs:drugEffects', src, type, effects, duration)
        end)
    end
end
