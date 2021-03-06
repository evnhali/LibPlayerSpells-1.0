--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("DEMONHUNTER", 70000, 3, {
	COOLDOWN = {
		 185123, -- Throw Glaive (Havoc)
		 189110, -- Infernal Strike
		 195072, -- Fel Rush
		 201467, -- Fury of the Illidari (Havon artifact)
		 213241, -- Felblade
		[183752] = "INTERRUPT", -- Consume Magic
		AURA = {
			HELPFUL = {
				SURVIVAL = {
					207810, -- Nether Bond
					209426, -- Darkness
				},
			},
			HARMFUL = {
				 185245, -- Torment (taunt)
				 198813, -- Vengeful Retreat (slow)
				 202443, -- Anguish (Havoc artifact)
				 204598, -- Sigil of Flame
				 204843, -- Sigil of Chains (slow)
				 207407, -- Soul Carver (Vengeance artifact)
				 206491, -- Nemesis
				 207690, -- Bloodlet
				 207771, -- Fiery Brand
				 210003, -- Razor Spikes (slow)
				 211053, -- Fel Barrage
				 212818, -- Fiery Demise (Vengeance artifact)
				 213405, -- Master of the Glaive
				[204490] = "INTERRUPT", -- Sigil of Silence
				[207744] = "SURVIVAL", -- Fiery Brand
				CROWD_CTL = {
					179057, -- Chaos Nova (stun)
					200166, -- Metamorphosis (Havoc) (stun)
					207685, -- Sigil of Misery (disorient)
					211881, -- Fel Eruption (stun)
					217832, -- Imprison
				},
			},
			PERSONAL = {
				178740, -- Immolation Aura
				188499, -- Blade Dance
				188501, -- Spectral Sight
				203650, -- Prepared
				207709, -- Blade Turning
				208579, -- Nemesis (Demons)
				208605, -- Nemesis (Humanoids)
				208607, -- Nemesis (Aberrations)
				208608, -- Nemesis (Beasts)
				208610, -- Nemesis (Draginkin)
				208611, -- Nemesis (Elementals)
				208612, -- Nemesis (Giants)
				208613, -- Nemesis (Mechanicals)
				208614, -- Nemesis (Undead)
				208628, -- Momentum
				210155, -- Death Sweep
				218561, -- Siphoned Power (Vengeance artifact)
				227330, -- Gluttony
				BURST = {
					162264, -- Metamorphosis (Havoc)
					211048, -- Chaos Blades
				},
				SURVIVAL = {
					187827, -- Metamorphosis (Vengeance)
					196555, -- Netherwalk
					203819, -- Demon Spikes
					207811, -- Nether Bond
					212800, -- Blur
					218256, -- Empower Wards
					227225, -- Soul Barrier
				},
			},
		},
	},
	AURA = {
		[224509] = "HARMFUL", -- Frailty
		PERSONAL = {
			 131347, -- Glide
			 207693, -- Feast of Souls
			[212988] = "SURVIVAL", -- Painbringer (Vengeance artifact)
		},
	}
}, {
	-- map aura to provider
	[162264] = 191427, -- Metamorphosis (Havoc)
	[198813] = 198793, -- Vengeful Retreat (slow)
	[200166] = 191427, -- Metamorphosis (Havoc) (stun)
	[202443] = 201473, -- Anguish <- Anguish of the Deceiver (Havoc artifact)
	[203650] = 203551, -- Prepared
	[203819] = 203720, -- Demon Spikes
	[204490] = 202137, -- Sigil of Silence
	[204598] = 204596, -- Sigil of Flame
	[204843] = 202138, -- Sigil of Chains (slow)
	[207685] = 207684, -- Sigil of Misery (disorient)
	[207690] = 206473, -- Bloodlet
	[207693] = 207697, -- Feast of Souls
	[207709] = 203753, -- Blade Turning
	[207744] = 204021, -- Fiery Brand
	[207771] = 207739, -- Fiery Brand <- Burning Alive
	[207811] = 207810, -- Nether Bond
	[208579] = 206491, -- Nemesis (Demons)
	[208605] = 206491, -- Nemesis (Humanoids)
	[208607] = 206491, -- Nemesis (Aberrations)
	[208608] = 206491, -- Nemesis (Beasts)
	[208610] = 206491, -- Nemesis (Draginkin)
	[208611] = 206491, -- Nemesis (Elementals)
	[208612] = 206491, -- Nemesis (Giants)
	[208613] = 206491, -- Nemesis (Mechanicals)
	[208614] = 206491, -- Nemesis (Undead)
	[208628] = 206476, -- Momentum
	[209426] = 196718, -- Darkness
	[210003] = 209400, -- Razor Spikes (slow)
	[210155] = 210152, -- Death Sweep
	[212800] = {
		198589, -- Blur
		205411, -- Desperate Instincts
	},
	[212818] = 212817, -- Fiery Demise (Vengeance artifact)
	[212988] = 207387, -- Painbringer (Vengeance artifact)
	[213405] = 203556, -- Master of the Glaive
	[218561] = 218910, -- Siphoned Power <- Siphon Power (Vengeance artifact)
	[224509] = 218679, -- Frailty <- Spirit Bomb
	[227330] = 227327, -- Gluttony
}, {
	-- map aura to modified spell(s)
	[202443] = 198013, -- Anguish (Havoc artifact) -> Eyebeam
	[203650] = 198793, -- Prepared -> Vengeful Retreat
	[207690] = 185123, -- Bloodlet -> Throw Glaive
	[207693] = 228477, -- Feast of Souls -> Soul Cleave
	[207709] = 203782, -- Blade Turning -> Shear
	[207771] = 204021, -- Fiery Brand
	[208628] = { -- Momentum
		195072, -- Fel Rush
		198793, -- Vengeful Retreat
	},
	[210003] = 6603, -- Razor Spikes (slow) -> Auto Attack
	[212818] = 204021, -- Fiery Demise (Vengeance artifact) -> Fiery Brand
	[212988] = 228477, -- Painbringer (Vengeance artifact) -> Soul Cleave
	[213405] = 185123, -- Master of the Glaive -> Throw Glaive
	[218561] = 218256, -- Siphoned Power (Vengeance artifact) -> Empower Wards
	[227330] = 228477, -- Gluttony
})
