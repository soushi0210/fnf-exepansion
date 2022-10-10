local bfx = 200;
local bfy = 0;
local zoomshit = 0;
local xx = 500;
local yy = 100;
local xx2 = 500;
local yy2 = 170;
local ofs = 15;
local followchars = false;
local del = 0;
local del2 = 0;

function onCreate()
--insert code here
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end

function onUpdate()
    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

if followchars == false then
  if mustHitSection == false then
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
      if getProperty('dad.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx,yy)
      end
        if  setProperty('defaultCamZoom', 1) then
      end
    
  else

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
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx2,yy2)
      end
      if setProperty('defaultCamZoom', 0.85) then
      end
  end
else
  triggerEvent('Camera Follow Pos','','')
end

--fake 3d oooo
    zoomshit = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
end