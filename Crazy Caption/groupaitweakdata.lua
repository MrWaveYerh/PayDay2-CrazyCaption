Hooks:PostHook(GroupAITweakData, "_init_task_data", "STOP_THE_GARBAGE_COPYPASTE_LOL_init_task_data", function(self, difficulty_index, difficulty)
	local is_console = SystemInfo:platform() ~= Idstring("WIN32")
	self.street = deep_clone(self.besiege)
	self.phalanx.minions.min_count = 1
	self.phalanx.minions.amount = 14
	self.phalanx.minions.distance = 100
	self.phalanx.vip.health_ratio_flee = 0.01
	self.phalanx.vip.damage_reduction = {
		start = 0.1,
		increase = 0.05,
		max = 0.9,
		increase_intervall = 10
	}
	self.phalanx.check_spawn_intervall = 360
	self.phalanx.chance_increase_intervall = 1
	if difficulty_index == 4 then
		self.phalanx.spawn_chance = {
			start = 0.04,
			increase = 0.04,
			decrease = 0.7,
			max = 1,
			respawn_delay = 360
		}
	elseif difficulty_index == 5 then
		self.phalanx.spawn_chance = {
			start = 0.05,
			increase = 0.05,
			decrease = 0.7,
			max = 1,
			respawn_delay = 360
		}
	elseif difficulty_index == 6 then
		self.phalanx.spawn_chance = {
			start = 0.06,
			increase = 0.05,
			decrease = 1,
			max = 1,
			respawn_delay = 360
		}
	elseif difficulty_index == 7 then
		self.phalanx.spawn_chance = {
			start = 0.08,
			increase = 0.7,
			decrease = 1,
			max = 1,
			respawn_delay = 360
		}
	elseif difficulty_index == 8 then
		self.phalanx.spawn_chance = {
			start = 1.0,
			increase = 0.09,
			decrease = 1,
			max = 1,
			respawn_delay = 360
		}
	else
		self.phalanx.spawn_chance = {
			start = 0.04,
			increase = 0.04,
			decrease = 0.7,
			max = 1,
			respawn_delay = 360
		}
	end
	self.safehouse = deep_clone(self.besiege)
end)