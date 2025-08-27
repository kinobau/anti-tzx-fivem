local mightyCasual = 0
local mL_cBaPm = false
local eA_yPauK = false

function returnCoreInit()
    local Beta, Alpha = Citizen.InvokeNative(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    local teq, jiu = Citizen.InvokeNative(0xBDBA226F, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    local lan = (teq + 1) / Beta
    local uefi = (jiu + 1) / Alpha
    return lan, uefi
end

CreateThread(function()
    while true do
        Wait(500)
        if mL_cBaPm then
            local a, b = returnCoreInit()
            local c = Citizen.InvokeNative(0xFC695459D4D0E219, a, b)
            if not c then
                mightyCasual = mightyCasual + 1
                if mightyCasual >= 4 then
                    mightyCasual = 0
                    print("External Cheat Detected: TZx")
                    return
                end
                Wait(250)
            else
                mightyCasual = 0
            end
        end
    end
end)
