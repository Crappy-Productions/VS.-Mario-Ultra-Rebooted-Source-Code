function onCreate()
	-- background shit
	makeLuaSprite('thiswontwork', 'thiswontwork', -600, -100);
	setScrollFactor('thiswontwork', 0.9, 0.9);
	scaleObject('thiswontwork', 1.0, 1.0);
	
	makeLuaSprite('garStagealt', 'garStagealt', -650, -200);
	setScrollFactor('garStagealt', 0.9, 0.9);
	scaleObject('garStagealt', 1.0, 1.0);
	
	makeAnimatedLuaSprite('garSmoke', 'garSmoke', -300, -260);
	setScrollFactor('garSmoke', 0.9, 0.9);
	scaleObject('garSmoke', 1.5, 1.5);
	addAnimationByPrefix('garSmoke', 'schmoove', 'smokey instance ', 24, true)

	addLuaSprite('thiswontwork', false);
	addLuaSprite('garStagealt', false);
	addLuaSprite('garSmoke', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end