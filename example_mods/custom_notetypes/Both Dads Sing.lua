local penis
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--???
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	
if noteType == 'Both Dads Sing' then
		if noteData == 0 then
			objectPlayAnimation('Sarah','singLEFT',true)
			setProperty('Sarah.offset.x',70)
                setProperty('Sarah.offset.y',20)
		end
		if noteData == 1 then
			objectPlayAnimation('Sarah','singDOWN',true)
			setProperty('Sarah.offset.x',70)
                setProperty('Sarah.offset.y',20)
		end
		if noteData == 2 then
			objectPlayAnimation('Sarah','singUP',true)
		setProperty('Sarah.offset.x',-150)
                setProperty('Sarah.offset.y',100)
		end
		if noteData == 3 then
			objectPlayAnimation('Sarah','singRIGHT',true)
			setProperty('Sarah.offset.x',70)
                setProperty('Sarah.offset.y',20)
		end
	end
end