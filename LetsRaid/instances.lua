--------------------------------------------------------------------------------
-- Let's Raid (c) 2019 by Siarkowy <http://siarkowy.net/letsraid>
-- Released under the terms of BSD 3-Clause "New" license (see LICENSE file).
--------------------------------------------------------------------------------

local abbrev_instances = {
    -- x = "Reserved",

    -- Tier 4
    k = "Karazhan",
    g = "Gruul's Lair",
    m = "Magtheridon's Lair",

    -- Tier 5
    s = "Serpentshrine Cavern",
    t = "Tempest Keep: Eye",
    z = "Zul'Aman",

    -- Tier 6
    h = "Hyjal Summit",
    b = "Black Temple",
    p = "Sunwell Plateau",

    -- Vanilla
    n = "Naxxramas",
    o = "Onyxia's Lair",
    j = "Ahn'Qiraj",
}

function LetsRaid:GetInstanceNameForKey(inst_key)
    return abbrev_instances[inst_key]
end
