#pragma once
#include <string>

struct GameSave
{
	std::string PlayerName;
	uint8_t Level = 1, Act = 1;
	int CheckpointIndex = -1;
	int NumLives = 3, CurrentHealth = 100, MaxHealth = 100;

	uint32_t Score = 0;
	double LevelTimePassedMS = 0.0;
	// PowerupState CurrentPowerupState;
};