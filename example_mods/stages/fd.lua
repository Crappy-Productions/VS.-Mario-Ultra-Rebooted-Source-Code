function onCreate()
	-- background shit
	makeLuaSprite('nightsky', 'nightsky', -700, -200);
	setScrollFactor('nightsky', 0.9, 0.9);

	makeLuaSprite('final dest', 'final dest', -750, -200);
	setScrollFactor('final dest', 1.0, 1.0);

	addLuaSprite('nightsky', false);
	addLuaSprite('final dest', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end