function onCreate()
	-- background shit

	makeAnimatedLuaSprite('bgg','BallisticBackground',-570.15, -285.45);
	setLuaSpriteScrollFactor('bgg', 1, 0.95);
	addAnimationByPrefix('bgg','BallisticBackground','Background Whitty Moving',24,true);

	addLuaSprite('bgg',false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end