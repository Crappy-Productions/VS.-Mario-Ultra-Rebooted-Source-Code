function onCreate()
	-- background shit
	makeLuaSprite('blacksky', 'blacksky', -700, -200);
	setScrollFactor('blacksky', 0.7, 0.7);

	makeLuaSprite('beam1', 'beam1', -850, -400);
	setScrollFactor('beam1', 0.8, 1.0);

	makeLuaSprite('beam2', 'beam2', -850, -400);
	setScrollFactor('beam2', 0.8, 1.0);

	makeLuaSprite('building', 'building', -850, -400);
	setScrollFactor('building', 0.8, 1.0);

	makeLuaSprite('waluigihead', 'waluigihead', -850, -400);
	setScrollFactor('waluigihead', 0.8, 1.0);

	makeLuaSprite('ground', 'ground', -850, -400);
	setScrollFactor('ground', 1.0, 1.0);

	makeAnimatedLuaSprite('yoshiDanceTitle', 'yoshiDanceTitle',700,140)addAnimationByPrefix('yoshiDanceTitle', 'bop', 'bop',36,true)
	objectPlayAnimation('yoshiDanceTitle','bop',false)	
	setScrollFactor('yoshiDanceTitle', 1.0, 1.0);

	addLuaSprite('blacksky', false);
	addLuaSprite('beam1', false);
	addLuaSprite('beam2', false);
	addLuaSprite('building', false);
	addLuaSprite('waluigihead', false);
	addLuaSprite('ground', false);
	addLuaSprite('yoshiDanceTitle', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit( ... )--for every beat

	objectPlayAnimation('yoshiDanceTitle', 'bop',false)

end

function onStepHit( ... )--for every beat
	-- body
end

function onUpdate( ... )
	-- body
end