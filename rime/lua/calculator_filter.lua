-- 对计算器（calculator_translator.lua）提供的候选词重新排序，优先把「答案」排在前边。
--
-- 安装：
-- - 将本文件保存至 <rime>/lua/
-- - 在 <rime>/rime.lua 新增一行：
--   `calculator_filter = require("calculator_filter")`
-- - 在 <rime>/<schema>/schema.yaml 新增：
--   `engine/filters/@next: lua_filter@calculator_filter`

local function calculator_filter(input)
    local l = {}
    for cand in input:iter() do
        if cand.type == 'number' and cand.comment == '答案' then
            yield(cand)
        else
            table.insert(l, cand)
        end
    end

    for _, cand in ipairs(l) do
        yield(cand)
    end
end

return calculator_filter
