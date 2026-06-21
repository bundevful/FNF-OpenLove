function event(params)
    local zoom, time = tonumber(params.v[1]), tonumber(params.v[2])
    if not zoom then return end
    if not time or time == 0 then
        state.camZoom = zoom
    else
        state.camZooming = false
        Tween.tween(game.camera, {zoom=zoom}, time, {
            onComplete = function()
                state.camZoom = zoom
                state.camZooming = true
            end
        })
    end
end