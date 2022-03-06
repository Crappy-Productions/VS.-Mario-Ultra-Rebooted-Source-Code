function onCreate()

     makeLuaSprite('theSky','sonicFUNsky',-200,-200)
	 addLuaSprite('theSky',false) 
     setLuaSpriteScrollFactor('theSky', 0.2, 0.2);

     makeLuaSprite('theMountains','Bush2',-200,0)
	 addLuaSprite('theMountains',false) 
     setLuaSpriteScrollFactor('theMountains', 0.3, 0.6);

	 makeAnimatedLuaSprite('theBack','Majin Boppers Back',0,-400)
	 addAnimationByPrefix('theBack','fire','MajinBop2 instance',24,true)
	 addLuaSprite('theBack',false)
	 objectPlayAnimation('theBack','MajinBop2 instance',true)

     makeLuaSprite('theBush','Bush 1',-300,250)
	 addLuaSprite('theBush',false) 
     setLuaSpriteScrollFactor('theBush', 0.6, 0.6);

	 makeAnimatedLuaSprite('theMajin','Majin Boppers Front',-400,-400)
	 addAnimationByPrefix('theMajin','fire','MajinBop1 instance',24,true)
	 addLuaSprite('theMajin',false)
	 objectPlayAnimation('theMajin','MajinBop1 instance',true)

	 makeLuaSprite('theGround','FUN floor BG',-200,450)
	 addLuaSprite('theGround',false) 
     setLuaSpriteScrollFactor('theGround', 1.0, 1.0);
	 
	 makeAnimatedLuaSprite('theRightMajin','majin FG2',-300,500)
	 addAnimationByPrefix('theRightMajin','fire','majin front bopper',24,true)
	 addLuaSprite('theRightMajin',true)
	 objectPlayAnimation('theRightMajin','majin front bopper',true)

	 makeAnimatedLuaSprite('theLeftMajin','majin FG1',1000,600)
	 addAnimationByPrefix('theLeftMajin','fire','majin front bopper',24,true)
	 addLuaSprite('theLeftMajin',true)
	 objectPlayAnimation('theLeftMajin','majin front bopper',true)

end

function onBeatHit( ... )--for every beat
    --body
end

function onStepHit( ... )-- for every step
    -- body
end

function onUpdate( ... )
	-- body
end