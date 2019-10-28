luaunit = require('luaunit')
questieJourney = require('QuestieJourneyStub')

function testTableSorting()
    LeftSideOfMap = {
        [16] = "Azshara",
        [148] = "Darkshore",
        [15] = "Dustwallow Marsh",
        [1657] = "Darnassus",
        [405] = "Desolace",
        [14] = "Durotar",
        [331] = "Ashenvale",
    }
    SortedKeys = questieJourney.DrawZoneQuestTab("null", LeftSideOfMap)
    --Assert Ashenvale got moved into the first positon of the sorted keys
    luaunit.assertEquals(LeftSideOfMap[SortedKeys[1]], "Ashenvale")
    --Assert Dustwallow becomes the last position of the sorted keys
    luaunit.assertEquals(LeftSideOfMap[SortedKeys[7]], "Dustwallow Marsh")
end

testTableSorting()
os.exit( luaunit.LuaUnit.run() )