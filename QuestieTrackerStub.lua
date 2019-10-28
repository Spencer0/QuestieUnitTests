
local export = {}
    function export.CreateBaseFrame()
        result, error = "A value that should not be in the global scope"   
    end

    function export.ClearVars()
        result, error = nil
    end

    function export.LocalizeVarsFromCreateBaseFrame()
        local result, error = "A value that should not be in the global scope" 
    end

return export