-- 生成 GUID translator
local common = require("caoayu.common")

local M = {}
function M.generatGuid(isUpper, isHyphen)
    local seed = { 'e', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' }
    local tb = {}
    for i = 1, 32 do
        table.insert(tb, seed[math.random(1, 16)])
    end
    local sid = table.concat(tb)
    if isHyphen then
        sid = string.sub(sid, 1, 8) ..
            "-" ..
            string.sub(sid, 9, 12) ..
            "-" .. string.sub(sid, 13, 16) .. "-" .. string.sub(sid, 17, 20) .. "-" .. string.sub(sid, 21, 32)
    end
    if isUpper then
        sid = string.upper(sid)
    end
    return sid
end

function M.func(input, seg, env)
    if input == 'guid' then
        common.yield_quality_cand(Candidate("guid", seg.start, seg._end, M.generatGuid(), "guid"))
        common.yield_quality_cand(Candidate("guid", seg.start, seg._end, M.generatGuid(true), "GUID"))
        common.yield_quality_cand(Candidate("guid", seg.start, seg._end, M.generatGuid(false,true), "guid-"))
        common.yield_quality_cand(Candidate("guid", seg.start, seg._end, M.generatGuid(true,true), "GUID-"))
    end
end

return M;
