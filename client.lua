--[[
########################################################################
#                               Shadow                                 #
#                        Created on 2-09-2022                          #
#                    https://discord.gg/wcwheSZbCX                     #
#                           Xprotect.Games                             #
#                                                                      #
########################################################################
--]]

RegisterNetEvent('Shadow:SendNotify')
AddEventHandler('Shadow:SendNotify', function(args)
    msg = split(args['message'], "\n")
    args['message'] = table.concat(msg, "<br>")
    SendNUIMessage({
        createNew = true,
        data = args
    })
end)

exports('Notify', function(args)
    msg = split(args['message'], "\n")
    args['message'] = table.concat(msg, "<br>")
	SendNUIMessage({
        createNew = true,
        data = args
    })
end)

function split(inputstr, sep)
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end
