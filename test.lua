local base_address = nozomi.memory.get_base_address()
local local_player_address = 0x18AC00;
local health_offset = 0xEC;

local player = nozomi.memory.read_usize(base_address + local_player_address)
local health = nozomi.memory.read_u8(player + health_offset)
print(health)
nozomi.memory.write_u8(player + health_offset, 101)