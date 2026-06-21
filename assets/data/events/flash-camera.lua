function event(params)
    local duration = tonumber(params.v[1]) or 0.5
    local flash = Graphic(0, 0, game.width, game.height, Color.WHITE)
    flash.origin:set(flash.width/2,flash.height/2)
    flash.scrollFactor:set(0, 0)
    flash.blend = "add"
    flash.alpha = 0.9
    flash.update = function(self, dt)
        Graphic.update(self, dt)
        flash.scale:set(
            1/game.camera.zoom,
            1/game.camera.zoom
        )
    end
    state:add(flash)
    Tween.tween(flash, {alpha = 0}, duration,{ease="linear"})
end