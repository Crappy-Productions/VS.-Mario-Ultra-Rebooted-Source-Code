function onCreate()

	makeLuaSprite('castle','castle',-600,-200)
	addLuaSprite('castle', false)
	scaleLuaSprite('castle', 2, 2);
	setLuaSpriteScrollFactor('castle', 1, 1);	

	makeAnimatedLuaSprite('RedToad', 'redtoad',1390,420)
	addAnimationByPrefix('RedToad', 'Red Toad instance 1', 'Red Toad',24,true)
	addLuaSprite('RedToad', false)

	close(true)
end

function onBeatHit( ... )--for every beat

	objectPlayAnimation('RedToad', 'Bop',false)

end

function onStepHit( ... )--for every beat
	-- body
end

function onUpdate( ... )
	-- body
end