-- 展示快捷邮箱后缀 translator

local M = {}
local cand = {}
cand['qq'] = '@qq.com'
cand['gmail'] = '@gmial.com'
cand['outlook'] = '@outlook.com'
cand['163'] = '@163.com'


function M.init()

end

function M.func(input, seg, env)
    if input == "/email" then
        for index, value in pairs(cand) do
            yield(Candidate('email', seg.start, seg._end, value, index))
        end
    end
end

return M