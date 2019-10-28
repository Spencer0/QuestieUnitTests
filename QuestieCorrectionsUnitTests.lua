luaunit = require('luaunit')
questieFixes = require('QuestieQuestFixes')

function testQuestCorrections()
    questTable = questieFixes.Load()
    -- The quest we removed from the corrections file
    removedKey = 1282

    -- Flag that toggles if we find the corrections in the file
    correctionFound = false

    --Iterate over the list of quest IDs and compare values
    for k,v in pairs(questTable) do
        if(k==removedKey)then 
            correctionFound = true
        end
    end
    
    luaunit.assertFalse(correctionFound)
      
end

testQuestCorrections()

os.exit( luaunit.LuaUnit.run() )