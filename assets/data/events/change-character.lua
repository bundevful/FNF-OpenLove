function create()
    for _,event in ipairs(state.SONG.events) do
        if event.e == "change-character" or event.e == "Change Character" then
            local char = event.v[2]
            local data = Parser.getCharacter(char)
            if not data then goto continue end
            paths.getAtlas(data.sprite)
            paths.getImage("icons/"..data.icon)
        end
        ::continue::
    end
end
function event(params)
    local name = string.lower(params.v[1] or "")
    switch(name, {
        [{"dad", "opponent", "1"}] = function()
            state.scripts:remove(state.dad.script)
            state:remove(state.dad)

            state.dad = Character(state.stage.dadPos.x, state.stage.dadPos.y,
                params.v[2], false)
            state:insert(state:indexOf(state.stage.foreground), state.dad)
            state.scripts:add(state.dad.script)

            state.enemyNotefield.character = state.dad

            state.healthBar.iconP2:changeIcon(state.dad.icon)
        end,
        [{"gf", "girlfriend", "3"}] = function()
            state.scripts:remove(state.gf.script)
            state:remove(state.gf)

            state.gf = Character(state.stage.gfPos.x, state.stage.gfPos.y,
                params.v[2], true)
            state:insert(state:indexOf(state.stage.foreground), state.gf)
            state.scripts:add(state.gf.script)
        end,
        [{"bf", "boyfriend", "player", "2"}] = function()
            state.scripts:remove(state.boyfriend.script)
            state:remove(state.boyfriend)

            state.boyfriend = Character(state.stage.boyfriendPos.x, state.stage.boyfriendPos.y,
                params.v[2], true)
            state:add(state.boyfriend)
            sstate:insert(state:indexOf(state.stage.foreground), state.boyfriend.script)

            state.playerNotefield.character = state.boyfriend

            state.healthBar.iconP1:changeIcon(state.boyfriend.icon)
        end
    })
end