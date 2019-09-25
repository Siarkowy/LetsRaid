--------------------------------------------------------------------------------
-- Let's Pug (c) 2019 by Siarkowy <http://siarkowy.net/letspug>
-- Released under the terms of BSD 2.0 license.
--------------------------------------------------------------------------------

local LetsPug = LetsPug
local RaidWatch = RaidWatch

local focus_player = LetsPug.player

local function getSlashInstanceFocus(instance_key)
    return function(info)
        return RaidWatch:GetPlayerInstanceFocus(focus_player, instance_key)
    end
end

local function setSlashInstanceFocus(instance_key)
    return function(info, v)
        return RaidWatch:SetPlayerInstanceFocus(focus_player, instance_key, v)
    end
end

local slash = {
    handler = RaidWatch,
    type = "group",
    childGroups = "tab",
    args = {
        gui = {
            name = "GUI",
            desc = "Shows graphical interface.",
            type = "execute",
            func = function(info)
                InterfaceOptionsFrame_OpenToFrame(RaidWatch.options)
            end,
            guiHidden = true,
            order = 0
        },
        focus = {
            handler = LetsPug,
            type = "group",
            name = "Focus",
            desc = "Toggle instance focus",
            order = 10,
            args = {
                player = {
                    name = "Current Player",
                    type = "select",
                    values = "GetAltValuesSlash",
                    get = function(info)
                        return focus_player
                    end,
                    set = function(info, name)
                        focus_player = name
                    end,
                    width = "full",
                    order = 1
                },

                tier4 = {
                    name = "Tier 4",
                    type = "header",
                    cmdHidden = true,
                    order = 40
                },
                kz = {
                    name = "Karazhan",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("k"),
                    set = setSlashInstanceFocus("k"),
                    order = 41
                },
                gl = {
                    name = "Gruul's Lair",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("g"),
                    set = setSlashInstanceFocus("g"),
                    order = 42
                },
                ml = {
                    name = "Magtheridon's Lair",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("m"),
                    set = setSlashInstanceFocus("m"),
                    order = 43
                },

                tier5 = {
                    name = "Tier 5",
                    type = "header",
                    cmdHidden = true,
                    order = 50
                },
                ssc = {
                    name = "Serpentshrine Cavern",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("s"),
                    set = setSlashInstanceFocus("s"),
                    order = 51
                },
                tk = {
                    name = "Tempest Keep: Eye",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("t"),
                    set = setSlashInstanceFocus("t"),
                    order = 52
                },
                za = {
                    name = "Zul'Aman",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("z"),
                    set = setSlashInstanceFocus("z"),
                    order = 53
                },

                tier6 = {
                    name = "Tier 6",
                    type = "header",
                    cmdHidden = true,
                    order = 60
                },
                mh = {
                    name = "Hyjal Summit",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("h"),
                    set = setSlashInstanceFocus("h"),
                    order = 61
                },
                bt = {
                    name = "Black Temple",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("b"),
                    set = setSlashInstanceFocus("b"),
                    order = 62
                },
                swp = {
                    name = "Sunwell Plateau",
                    desc = "Toggle instance focus",
                    type = "toggle",
                    get = getSlashInstanceFocus("p"),
                    set = setSlashInstanceFocus("p"),
                    order = 63
                },
            }
        },
    }
}

RaidWatch.slash = slash