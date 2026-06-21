function event(params)
    local __game = string.split(params.v[1], ", ")
    local gameParams = {
        duration = tonumber(__game[1]),
        intensity = tonumber(__game[2])
    }
    local __hud = string.split(params.v[1], ", ")
    local hudParams = {
        duration = tonumber(__hud[1]),
        intensity = tonumber(__hud[2])
    }
    game.camera:shake(gameParams.intensity, gameParams.duration)
    state.camHUD:shake(hudParams.intensity, hudParams.duration)
    state.camNotes:shake(hudParams.intensity, hudParams.duration)
end