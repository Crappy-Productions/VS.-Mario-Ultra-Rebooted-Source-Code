function onCreate()
	-- background shit
	makeAnimatedLuaSprite('FlameBg','FlameBg',-600, -300)addAnimationByPrefix('FlameBg', 'idle','FlameBg',20,true)
	objectPlayAnimation('FlameBg','idle',false)
	setScrollFactor('FlameBg', 0.9, 0.9);
	
	makeAnimatedLuaSprite('Mountains','Mountains',-600, -300)addAnimationByPrefix('Mountains', 'idle','Mountains',32,true)
	objectPlayAnimation('Mountains','idle',false)
	setScrollFactor('Mountains', 0.9, 0.9);
	
	makeAnimatedLuaSprite('Floor','Floor',-650, -150)addAnimationByPrefix('Floor', 'idle','Floor',24,true)
	objectPlayAnimation('Floor','idle',false)
	scaleObject('Floor', 1.1, 1.1);

	
	
	addLuaSprite('FlameBg', false);
	addLuaSprite('Mountains', 'false');
	addLuaSprite('Floor', false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end