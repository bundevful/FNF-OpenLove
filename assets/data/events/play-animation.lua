
local queue = {
    boyfriend = "",
    dad = "",
    gf = ""
}

function event(params)
    local char, anim = string.lower(params.v[2]), params.v[1]
    switch(char, {
        [{"dad", "opponent", state.dad.char}] = function()
            char = "dad"
        end,
        [{"bf", "boyfriend", state.boyfriend.char}] = function()
            char = "boyfriend"
        end,
        [{"gf", "girlfriend", state.gf.char}] = function()
            char = "gf"
        end
    })
    if not state[char] then return end
    state[char].lastHit = math.huge
    state[char]:play(anim, true)
    queue[char] = anim
end

function postUpdate(dt)
    for char,anim in pairs(queue) do
        if state[char].curAnim.name == anim and state[char].animFinished then
            state[char].lastHit = 0
        end
    end
end