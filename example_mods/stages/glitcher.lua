function onCreate()
	-- background shit
	makeLuaSprite('glitcherBack', 'glitcherBack', -600, -300);
	setLuaSpriteScrollFactor('glitcherBack', 0.9, 0.9);
	
	makeLuaSprite('glitcherFront', 'glitcherFront', -650, 600);
	setLuaSpriteScrollFactor('glitcherFront', 0.9, 0.9);
	scaleObject('glitcherFront', 1.1, 1.1);

	addLuaSprite('glitcherBack', false);
	addLuaSprite('glitcherFront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end