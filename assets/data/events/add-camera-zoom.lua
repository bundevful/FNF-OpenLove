function event(params)
    local zoom, hudZoom = tonumber(params.v[1]), tonumber(params.v[2])
    game.camera.zoom = game.camera.zoom + (zoom or 0)
    state.camHUD.zoom = state.camHUD.zoom + (hudZoom or 0)
end