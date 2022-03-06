function onCreate()
	-- background shit
	makeLuaSprite('battle', 'battle', -10840, -200);
	setScrollFactor('battle', 1.0, 1.0);

	addLuaSprite('battle', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end