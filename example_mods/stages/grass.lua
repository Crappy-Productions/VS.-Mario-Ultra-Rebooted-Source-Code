function onCreate()
	-- background shit
	makeLuaSprite('bluesky', 'bluesky', -600, -300);
	setScrollFactor('bluesky', 0.8, 0.8);

	makeLuaSprite('cloud', 'cloud', -500, -350);
	setScrollFactor('cloud', 0.8, 0.8);

	makeAnimatedLuaSprite('mountainbop', 'mountainbop',-1100,-700)addAnimationByPrefix('mountainbop', 'mountainbop', 'mountainbop',50,true)
	objectPlayAnimation('mountainbop','mountainbop',false)	
	setScrollFactor('mountainbop', 0.8, 0.8);
	scaleLuaSprite('mountainbop', 2.7, 2.7);

	makeLuaSprite('hillback', 'hillback', -600, -900);
	setScrollFactor('hillback', 0.8, 0.8);

	makeLuaSprite('hillfront', 'hillfront', -700, -1150);
	setScrollFactor('hillfront', 0.9, 0.9);

	makeLuaSprite('front', 'front', -700, -1234);
	setScrollFactor('front', 1.0, 1.0);

	makeAnimatedLuaSprite('yoshiDanceTitle', 'yoshiDanceTitle',550,140)addAnimationByPrefix('yoshiDanceTitle', 'bop', 'bop',50,true)
	objectPlayAnimation('yoshiDanceTitle','bop',false)	
	setScrollFactor('yoshiDanceTitle', 1.0, 1.0);

	makeLuaSprite('bush', 'bush', -800, -250);
	setScrollFactor('bush', 1.0, 1.0);

	addLuaSprite('bluesky', false);
	addLuaSprite('cloud', false);
	addLuaSprite('mountainbop', false);
	addLuaSprite('hillback', false);
	addLuaSprite('hillfront', false);
	addLuaSprite('front', false);
	addLuaSprite('yoshiDanceTitle', false);
	addLuaSprite('bush', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit( ... )--for every beat

	objectPlayAnimation('yoshiDanceTitle', 'bop',false)
	objectPlayAnimation('mountainbop', 'mountainbop',false)


end

function onStepHit( ... )--for every beat
	-- body
end

function onUpdate( ... )
	-- body
end