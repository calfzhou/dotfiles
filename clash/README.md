# Clash and Clash for Windows related

- [GitHub - Dreamacro/clash: A rule-based tunnel in Go.](https://github.com/Dreamacro/clash)
- Clash for Windows [Releases · Fndroid/clash_for_windows_pkg · GitHub](https://github.com/Fndroid/clash_for_windows_pkg/releases)
  - A **Windows/macOS/Linux** GUI based on Clash and Electron.
  - Doc: [Clash for Windows | Clash for Windows](https://docs.cfw.lbyczf.com/)
  - Clash 中用全局模式，浏览器用 SwitchyOmega + gfwlist.txt
  - 如果要在 Clash 中做分流规则，还想能方便地切换代理，可以考虑配置自定义配置，使用 [proxy-providers](https://github.com/Dreamacro/clash/wiki/configuration#proxy-providers) 和 [rule-providers](https://github.com/Dreamacro/clash/wiki/premium-core-features#rule-providers)
    - 可以通过 CFW 的 [parsers](https://docs.cfw.lbyczf.com/contents/parser.html) 功能，把 rule-providers 和 rules 添加到 profile 里
    - [GitHub - Loyalsoldier/clash-rules: 🦄️ 🎃 👻 Clash Premium 规则集(RULE-SET)，兼容 ClashX Pro、Clash for Windows 客户端。](https://github.com/Loyalsoldier/clash-rules)

由于 rule providers 的初始化逻辑，有可能会[因为无法成功下载 rule provider 文件而导致 profile 无法被选中](https://github.com/Fndroid/clash_for_windows_pkg/issues/3101)，可以手动把 [ruleset](./ruleset) 目录中的文件复制到 CFW home 目录下的 ruleset 目录中，确保 profile 能被选中，之后就可以自动定时更新 rule provider 内容。
