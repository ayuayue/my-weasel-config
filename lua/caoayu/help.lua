-- 输入 /? 展示部分帮助信息 translator

local M = {}

function M.init(env)

end
function M.func(input,seg,env)
    if input == "/help" then
        yield(Candidate("help", seg.start, seg._end, _VERSION, "Lua version"))
        yield(Candidate("help", seg.start, seg._end, rime_api.get_rime_version(), "Rime version"))
        yield(Candidate("help", seg.start, seg._end, rime_api.get_distribution_code_name(), "Name"))
        yield(Candidate("help", seg.start, seg._end, rime_api.get_distribution_version(), "Release version"))

        yield(Candidate("help", seg.start, seg._end, "/dh/fz/jz/hj", "点号/夹注/行间"))
        yield(Candidate("help", seg.start, seg._end, "/tg/dz/gz", "天干/地支/干支"))
		yield(Candidate("help", seg.start, seg._end, "/jq/dw/hb", "节气/单位/货币"))
		yield(Candidate("help", seg.start, seg._end, "/fs/pk/lm/lmd", "分数/扑克/罗马"))
		yield(Candidate("help", seg.start, seg._end, "/sj/yf/rq/yr", "时间/月份/日期"))
		yield(Candidate("help", seg.start, seg._end, "/fh/mj/dn/sz/", "符号/麻将/电脑/色子"))
		yield(Candidate("help", seg.start, seg._end, "/tt/xz/xzm/xh", "天体/星座/星号"))
		yield(Candidate("help", seg.start, seg._end, "/bd/xb/bdz", "标点/下标/竖标点"))
		yield(Candidate("help", seg.start, seg._end, "/xl/xld", "希腊字符/大写"))
		yield(Candidate("help", seg.start, seg._end, "/lm/lmd", "罗马数字/大写"))
		yield(Candidate("help", seg.start, seg._end, "/tg/dz/gz", "天干/地支/干支"))
		yield(Candidate("help", seg.start, seg._end, "/bg/bgm/txj", "八卦"))

    end
end
return M