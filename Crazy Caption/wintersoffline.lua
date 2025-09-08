local original_check_spawn_phalanx = GroupAIStateBesiege._check_spawn_phalanx

function GroupAIStateBesiege:_check_spawn_phalanx(...)
	local original_value
	if Global.game_settings.single_player then
		original_value = true
	end
	Global.game_settings.single_player = nil
	original_check_spawn_phalanx(self, ...)
	Global.game_settings.single_player = original_value
end