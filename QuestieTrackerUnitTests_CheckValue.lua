luaunit = require('luaunit')
QuestieTracker = require('QuestieTrackerFull')

function testResultScope()
    luaunit.assertTrue(QuestieTracker)
end

testResultScope()

os.exit( luaunit.LuaUnit.run() )