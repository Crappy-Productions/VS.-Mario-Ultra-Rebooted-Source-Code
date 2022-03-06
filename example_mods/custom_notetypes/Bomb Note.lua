function onCreate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bomb Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BOMBNOTE_assets');
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end

	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Bomb Note' then
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bomb Note' then
		setProperty('health',getProperty('health')-0.3)
			characterPlayAnim('boyfriend', 'burn', true);
	end
end