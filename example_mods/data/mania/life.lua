function opponentNoteHit()
   health = getProperty('health')
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.016);
end
end