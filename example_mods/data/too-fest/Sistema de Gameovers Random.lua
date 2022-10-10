--Creditos a mi (Nickobelit) por el código
--el que robe el código es gei xd
--(además que no será tan fácil)
local seenEndCutscene = false

function onUpdate(elapsed)
    RandomGameplays = math.random(1,7)
   end

function onGameOver()
    GameOverActive = false
    enableEnd = false

    if not GameOverActive and not enableEnd and not seenEndCutscene then
    if RandomGameplays == 1 then
               startVideo('SanicGameOvers/Atomic');
               GameOverActive = true
                seenEndCutscene = true
	end
    if RandomGameplays == 2 then
               startVideo('SanicGameOvers/BfFuckingDies');
               GameOverActive = true
                seenEndCutscene = true
		end
	
if RandomGameplays == 3 then
               startVideo('SanicGameOvers/car');
               GameOverActive = true
                seenEndCutscene = true
		end

if RandomGameplays == 4 then
               startVideo('SanicGameOvers/FastBear');
               GameOverActive = true
                seenEndCutscene = true
		end

if RandomGameplays == 5 then
               startVideo('SanicGameOvers/g00seb4rn6');
               GameOverActive = true
                seenEndCutscene = true
		end
	

if RandomGameplays == 6 then
               startVideo('SanicGameOvers/JoeManReference');
               GameOverActive = true
                seenEndCutscene = true
		end

if RandomGameplays == 7 then
               startVideo('SanicGameOvers/Kys');
             GameOverActive = true
                seenEndCutscene = true
		end
end

function onPause()
    if GameOverActive then
        return Function_Stop
    end
end

function onEndSong()
    if GameOverActive and not enableSong then
     return Function_Stop;
    end
    return Function_Continue;
end
end

--El código es tan Insano que robarlo es un delito 👮‍♂️
