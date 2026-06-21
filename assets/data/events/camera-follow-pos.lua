
function event(params)
    local x, y = tonumber(params.v[1]), tonumber(params.v[2])
    local instant = state.camSpeed >= 500
    if not x or not y then
        x, y = state:getCameraPosition(state.camTarget)
        state.camFollow:set(x, y)
    else
        state.camFollow:set(x, y)
    end
    local lerp
    if not instant then lerp = 2.4 * state.camSpeed end
    game.camera:follow(state.camFollow, nil, lerp)
end