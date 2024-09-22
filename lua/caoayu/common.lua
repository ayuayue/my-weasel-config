-- 公共方法
local M = {}

function M.init()
    print("common")
end

-- 发送高优先级提示词
function M.yield_quality_cand(cand)
    cand.quality = 100
    yield(cand)
end

return M