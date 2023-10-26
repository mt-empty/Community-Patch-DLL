-- Pillage values overhaul

-- GPTI
UPDATE Improvements
SET PillageGold = 20
WHERE Type = 'IMPROVEMENT_LANDMARK'
OR CreatedByGreatPerson = 1;

-- Resource-only improvements, UI with strict restrictions
UPDATE Improvements
SET PillageGold = 17
WHERE Type IN (
	'IMPROVEMENT_FISHING_BOATS',
	'IMPROVEMENT_CAMP',
	'IMPROVEMENT_QUARRY',
	'IMPROVEMENT_PASTURE',
	'IMPROVEMENT_PLANTATION',
	'IMPROVEMENT_OFFSHORE_PLATFORM',
	'IMPROVEMENT_WELL',
	'IMPROVEMENT_BRAZILWOOD_CAMP',
	'IMPROVEMENT_FEITORIA',
	'IMPROVEMENT_CHATEAU',
	'IMPROVEMENT_POLDER_WATER',
	'IMPROVEMENT_KUNA'
);

-- UI with fewer restrictions
UPDATE Improvements
SET PillageGold = 14
WHERE Type IN (
	'IMPROVEMENT_KASBAH',
	'IMPROVEMENT_POLDER',
	'IMPROVEMENT_ENCAMPMENT_SHOSHONE',
	'IMPROVEMENT_MOAI',
	'IMPROVEMENT_SPAIN_HACIENDA',
	'IMPROVEMENT_SIHEYUAN'
);

-- No adjacency improvements, spammable UI
UPDATE Improvements
SET PillageGold = 11
WHERE Type IN (
	'IMPROVEMENT_TRADING_POST',
	'IMPROVEMENT_FORT',
	'IMPROVEMENT_TERRACE_FARM',
	'IMPROVEMENT_EKI'
);

-- Spammable normal improvements
UPDATE Improvements
SET PillageGold = 8
WHERE Type IN (
	'IMPROVEMENT_FARM',
	'IMPROVEMENT_LUMBERMILL',
	'IMPROVEMENT_MINE'
);

-- Unpillageables
UPDATE Improvements
SET PillageGold = 0
WHERE Type IN (
	'IMPROVEMENT_ARCHAEOLOGICAL_DIG',
	'IMPROVEMENT_JFD_MACHU_PICCHU',
	'IMPROVEMENT_BARBARIAN_CAMP',
	'IMPROVEMENT_GOODY_HUT',
	'IMPROVEMENT_CITY_RUINS',
	'IMPROVEMENT_EMBASSY'
);
