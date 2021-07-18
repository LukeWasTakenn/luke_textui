RegisterNetEvent('luke_textui:ShowUI')
AddEventHandler('luke_textui:ShowUI', function(text, color)
    SendNUIMessage({
        type = 'show_ui',
        text = text,
        color = color
    })
end)

RegisterNetEvent('luke_textui:HideUI')
AddEventHandler('luke_textui:HideUI', function()
    SendNUIMessage({
        type = 'hide_ui'
    })
end)
