function onCreate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mushroom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MUSHNOTE_assets');
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end

	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Mushroom Note' then
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Mushroom Note' then
		playSound('mushHIT', 0.5)
		setProperty('health',getProperty('health')+0.5);
	end
end