local next_allowed_dmg_t = -100
local data = CopDamage._apply_damage_to_health
function CopDamage:_apply_damage_to_health(damage)
    if TimerManager:game():time() < next_allowed_dmg_t then
		damage = 0
	else
		next_allowed_dmg_t = managers.player:player_timer():time() + tweak_data.player.damage.MIN_DAMAGE_INTERVAL
	end

	data(self, damage)
end