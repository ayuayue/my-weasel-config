-- 英文单词，首字母大写

local M = {}

function M.func(input, env)
    local cands = {}
    local idx, idxSelf
    local selfFlag
    local candTxtLen
    idx = 0
    idxSelf = 0

    for cand in input:iter() do
        idx = idx + 1
        selfFlag = cand.comment:find("∞")
        if selfFlag then
            idxSelf = idxSelf + 1
        end
        local s, e = string.find(cand.txt, "^[a-z]+$")
        if s then
            yield(cand)
            if idx == 1 then
                local thisTxt = cand.text:gsub("^%l", string.upper)
                yield(Candidate("upper", cand.start, cand._end, thisTxt, ''))
                idx = idx + 1
            end
        else
            yield(cand)
        end
    end
end

return M