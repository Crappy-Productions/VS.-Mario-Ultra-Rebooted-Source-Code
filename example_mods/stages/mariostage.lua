function onCreate()

	makeLuaSprite('MarioBG','MarioBG',-1200,-770)
	addLuaSprite('MarioBG', false)
	setLuaSpriteScrollFactor('MarioBG', 1, 1);	

	makeAnimatedLuaSprite('QuestionBlock', 'questionblock',1410,150)
	addAnimationByPrefix('QuestionBlock', 'Spin', 'Question Block',24,true)
	addLuaSprite('QuestionBlock', false)
	objectPlayAnimation('QuestionBlock', 'Spin',false)

	makeAnimatedLuaSprite('YellowToad', 'yellowtoad',1390,420)
	addAnimationByPrefix('YellowToad', 'Bop', 'Yellow Toad',24,true)
	addLuaSprite('YellowToad', false)

	makeAnimatedLuaSprite('BlueToad', 'bluetoad',1160,430)
	addAnimationByPrefix('BlueToad', 'Bop', 'Blue Toad',24,true)
	addLuaSprite('BlueToad', false)

	close(true)
end

function onBeatHit( ... )--for every beat

	objectPlayAnimation('BlueToad', 'Bop',false)

	objectPlayAnimation('YellowToad', 'Bop',false)

end

function onStepHit( ... )--for every beat
	-- body
end

function onUpdate( ... )
	-- body
end