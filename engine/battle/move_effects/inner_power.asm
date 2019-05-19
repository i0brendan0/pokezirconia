BattleCommand_InnerPower:
	ld a, [wAttackMissed]
	and a
	ret nz
	
	ld hl, wBattleMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .got_turn
	ld hl, wEnemyMonType1
	
.got_turn
	call BattleRandom
	add a
	jr c, .got_type
	inc hl
.got_type
	ld a, [hl]
	; Overwrite the current move type.
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a
	ret
