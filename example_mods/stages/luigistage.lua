function onCreate()

	makeLuaSprite('LuigiBG','LuigiBG',-1200,-480)
	addLuaSprite('LuigiBG', false)
	setLuaSpriteScrollFactor('LuigiBG', 1, 1);	

	makeAnimatedLuaSprite('Boo1', 'Boo1',-550,0)
	addAnimationByPrefix('Boo1', '1 Boo', '1 Boo',24,true)
	addLuaSprite('Boo1', false)

	makeAnimatedLuaSprite('Boo2', 'Boo2',-300,200)
	addAnimationByPrefix('Boo2', '2 Boo', '2 Boo',24,true)
	addLuaSprite('Boo2', false)

	close(true)
end

function onBeatHit( ... )--for every beat

	objectPlayAnimation('Boo 1', '1 Boo',false)

	objectPlayAnimation('Boo 2', '2 Boo',false)

end

function onStepHit( ... )--for every beat
	-- body
end

function onUpdate( ... )
	-- body
end