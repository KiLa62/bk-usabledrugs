Config = {}

Config.Framework = 'esx'    -- 'esx' or 'qb'

Config.Drugs = { 
    {
        Item = "weed",                -- Item name
        Type = 'smoke',               -- 'pill', 'drink', 'smoke', 'needle'
        Effects = {
            'visual_shaking',
            'confused_visual',
            'sprint_faster',
            'swim_faster',
            'armor50',
        },
        Duration = 120,               -- duration of efects in seconds
        RemoveOnUse = true,           -- Remove item on use
    },
}

--[[
    Available efects:
    'visual_shaking',
    'drunk_walk',
    'fall',
    'pink_visual',
    'green_visual',
    'confused_visual',
    'yellow_visual',
    'blurred_visual',
    'red_visual',
    'foggy_visual',
    'blue_visual',
    'sprint_faster',
    'swim_faster',
    'infinite_stamina',
    'armor100',
    'armor50',
    'health100',
    'health50',
]]
