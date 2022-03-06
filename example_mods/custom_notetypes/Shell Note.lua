function onCreate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shell Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SHELLNOTE_assets');
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end

	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Shell Note' then
		characterPlayAnim('boyfriend', 'dodge', true);
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Shell Note' then
		playSound('shellHIT', 1)
		setProperty('health',getProperty('health')-0.5);
	end
end