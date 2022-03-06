
local y = 50
local t = 0
-- stolen from bbpanzu lol -Uhard
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 420.95;
local yy = 420;
local xx2 = 732.9;
local yy2 = 450;
local ofs = 75;
local followchars = true;
local del = 0;
local del2 = 0;
local drain = 0.01 -- the funne
local allowCountdown = false
local turn = 10
local turn2 = 20
local y = 0;
local x = 0;
local canBob = true
local Strums = 'opponentStrums'
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
			startVideo('IDK HOW TO DELETED IT TO WORK LOL');
		
		
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onCreate()
    math.randomseed(os.clock() * 1000);
    
    --doTweenAlpha("gone","camHUD",0,0.01)
end
function onUpdate()
-- This is how I do it
-- Alpha is +16
-- X is +0
-- Y is +8
-- Angle is +24

-- Opponent arrows: 0-3
-- Player arrows: 4-7
-- hide and show the opponents arrows
for i=0,3 do
-- Alpha is 0 (0 being invisible)
noteTweenAlpha(i+16, i, math.floor(curStep/9999), 0.3)
end
	if followchars == true then
        if mustHitSection == false then
            --setProperty('defaultCamZoom',0.7)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            --setProperty('defaultCamZoom',0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
function onStepHit() -- VINE BOOM
    --[[if curStep == 16 or curStep == 20 or curStep == 24 or curStep == 26 or curStep == 28 or curStep == 30 or curStep == 1197 or curStep == 1199 or curStep == 1201  or curStep >= 1202 and curStep < 1212 then
        setProperty('camGame.zoom',1.6)
        setProperty('camHUD.zoom',1.7)
        cameraShake('camGame',0.01,0.1)
        cameraShake('camHUD',0.02,0.1)
        characterPlayAnim('boyfriend','scared',true)
        characterPlayAnim('gf','scared',true)
        doTweenZoom('vineboom0','camGame',1,crochet*0.002,'circOut')
        doTweenZoom('vineboom1','camHUD',1,crochet*0.0016,'circOut')
    end]]
end
function onBeatHit() -- oohhh mah gawwwd
    -- triggered 2 times per section
    if curBeat % 1 == 0 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', 20);
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubicOut');
    end
    -- triggered 4 times per section
    if curBeat % 2 == 0 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', -20);
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubicOut');
    end
--[[if curBeat == 68 or curBeat == 220 or curBeat == 228 or curBeat == 236 or curBeat == 244 or curBeat == 248 or curBeat == 252 or curBeat == 256 or curBeat == 260  or curBeat == 264 or curBeat == 268 or curBeat == 272 or curBeat == 276 or curBeat == 280 then
     cameraShake('camGame',0.015,1.2)
        cameraShake('camHUD',0.03,1.2)
end]]
    if curBeat == 240 then
    turn = turn * 4
    end
    if curBeat % 2 == 0 and canBob then 
        turn2 = turn2 * -1
        for i = 0,7 do
            local uhhh = curBeat % 8 * (i + i)
            local swag = i % 4 * 2.5 - uhhh
            if i > 3 then
                x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
            else
                x =  getPropertyFromGroup('playerStrums', i, 'x');
            end
            --noteTweenY("wheeeup"..i,i,y + turn,crochet*0.002,"sineInOut")
            noteTweenX("wheeeleft"..i,i,x + turn2,crochet*0.002,"sineInOut")
        end
    end
end