# RIME

[RIME | 中州韻輸入法引擎](https://rime.im/)

## macOS: Squirrel

[rime/squirrel: 【鼠鬚管】Rime for macOS](https://github.com/rime/squirrel)

``` bash
ln -snf $DOTFILES_HOME/_personal/PATH-TO-MY-DICTS $DOTFILES_HOME/rime/my_dicts
ln -s $DOTFILES_HOME/rime ~/Library/Rime
```

## 主用的输入方案

- 小鹤双拼
- 雾凇拼音

## 目前支持的操作

### 小鹤双拼

- 数字的各种格式（汉字、人民币大写等）：`R<number>`，如 `R1234.5678`。
- 字母、数字的各种变体：`V<alpha|digit>`，如 `Va`、`V1`。
  - 目前有个问题是字母的变体往往排的比较靠后。
- 其他各种符号：`V<alias>`，如 `Vjt` 各种箭头、`Vfh` 各种常用符号，`Vsx` 数学符号。
  - 详见 [symbols_caps_v.yaml](./symbols_caps_v.yaml)。
- 拆字输入：`uU<各部件拼音>`，如 `uUbuhao` 得到 `孬`（这里不支持双拼）。
- 以词定字：输入词组的拼音之后，按 `[` 或 `]` 上屏激活候选项的首字或尾字。
  - 快捷键通过 `default.yaml` 的 `key_binder/select_first_character` 和 `key_binder/select_last_character` 调整。
- Unicode 字符：`Unnnn`（注意 `U` 要大写），如 `U263a`。
- 输入当前日期、时间、农历：`date`、`time`、`week`、`datetime`、`timestamp`、`lunar`。
- 公历转阴历：`N<YYYYMMDD>`，如 `N20240726` 得到 `二〇二四年六月廿一` 或 `甲辰年（龙）六月廿一`。
- 计算器：`cC<formula>`，如 `cCsin(rad(30))`。
- 中英混输词条（cn_en.dict.yaml）自动空格。

### 雾凇拼音

- 数字的各种格式（汉字、人民币大写等）：`R<number>`。
- 字母、数字的各种变体：`v<alpha|digit>`。
- 其他各种符号：`v<alias>`。
  - 详见 [symbols_v.yaml](./symbols_v.yaml)。
- 拆字输入：`uU<各部件拼音>`。
- 以词定字：输入词组的拼音之后，按 `[` 或 `]` 上屏激活候选项的首字或尾字。
- Unicode 字符：`Unnnn`。
- 输入当前日期、时间、农历：`rq`、`sj`、`xq`、`dt`、`ts`、`nl`。
- 公历转阴历：`N<YYYYMMDD>`。
- 计算器：`cC<formula>`。
- 中英混输词条（cn_en.dict.yaml）自动空格。
