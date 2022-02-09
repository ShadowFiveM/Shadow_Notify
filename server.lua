exports('Notify', function(args)
	TriggerClientEvent('Shadow:SendNotify', args.target, args)
end)

-- version check
Citizen.CreateThread( function()
    if GetResourceMetadata(GetCurrentResourceName(), 'version') then
        PerformHttpRequest(
            'https://raw.githubusercontent.com/ShadowFiveM/Shadow_Notify/main/version.json',
            function(code, res, headers)
                if code == 200 then
                    local rv = json.decode(res)
                    if rv.version ~= GetResourceMetadata(GetCurrentResourceName(), 'version') then
                        print(
                            ([[^1-------------------------------------------------------
                            Shadow_Notify
UPDATE: %s AVAILABLE
CHANGELOG: %s
-------------------------------------------------------^0]]):format(
                                rv.version,
                                rv.changelog
                            )
                        )
                    end
                else
                    print('Shadow_Notify unable to check version')
                end
            end,
            'GET'
        )
    end
end
)