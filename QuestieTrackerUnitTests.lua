luaunit = require('luaunit')
QuestieTracker = require('QuestieTrackerStub')

function testResultScope()
    QuestieTracker.CreateBaseFrame() 
    luaunit.assertEquals(result, "A value that should not be in the global scope")
    QuestieTracker.ClearVars()
    QuestieTracker.LocalizeVarsFromCreateBaseFrame()
    luaunit.assertEquals(result, nil)
end



testResultScope()

os.exit( luaunit.LuaUnit.run() )