# RIME

[RIME | 中州韻輸入法引擎](https://rime.im/)

## macOS: Squirrel

[rime/squirrel: 【鼠鬚管】Rime for macOS](https://github.com/rime/squirrel)

``` bash
ln -s $DOTFILES_HOME/rime ~/Library/Rime
```

## 主用的输入方案

- 雾凇拼音
- 小鹤双拼

## 目前支持的操作

- 数字的各种格式（汉字、人民币大写等）：`R<number>`，如 `R1234.5678`。
- 字母、数字的各种变体：`v<alpha|digit>`，如 `va`、`v1`。
  - 注：小鹤双拼中使用大写字母 `V`（目前有个问题是字母的变体往往排的比较靠后）。
- 其他各种符号：`v<>`，如 `vjt` 各种箭头、`vss` 各种手势 emoji。
  - 注：小鹤双拼中使用大写字母 `V`。
- 拆字输入：`uU<各部件拼音>`，如 `uUbuhao` 得到 `孬`。
- 以词定字：输入词组的拼音之后，按 `[` 或 `]` 上屏激活候选项的首字或尾字。
  - 快捷键通过 `default.yaml` 的 `key_binder/select_first_character` 和 `key_binder/select_last_character` 调整。
- Unicode 字符：`Unnnn`（注意 `U` 要大写），如 `U263a`。
- 输入当前日期、时间、农历：`rq`、`sj`、`xq`、`dt`、`ts`、`nl`。
  - 注：小鹤双拼中使用 `date`、`time`、`week`、`datetime`、`timestamp`、`lunar`。
- 公历转阴历：`N<YYYYMMDD>`，如 `N20240726` 得到 `二〇二四年六月廿一` 或 `甲辰年（龙）六月廿一`。
- 计算器：`=<formula>`，如 `=sin(deg(30))`。
- 中英混输词条（cn_en.dict.yaml）自动空格。
