#!/usr/bin/env bash

# Copy custom rules from the current directory to the clash rule home directory.

clash_rule_home="$HOME/.config/clash/providers/rule"

while read -d ' ' name && read url; do
    hash=$(echo -n "$url" | md5sum | cut -d ' ' -f 1)
    echo "copy '$clash_rule_home/$hash.yaml' to '$name.yaml'"
    cp "$name.yaml" "$clash_rule_home/$hash.yaml"
done << EOF
custom-direct   https://cdn.jsdelivr.net/gh/calfzhou/dotfiles@master/clash/ruleset/custom-direct.yaml
custom-proxy    https://cdn.jsdelivr.net/gh/calfzhou/dotfiles@master/clash/ruleset/custom-proxy.yaml
custom-proxy-us https://cdn.jsdelivr.net/gh/calfzhou/dotfiles@master/clash/ruleset/custom-proxy-us.yaml
gfw             https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/gfw.txt
greatfire       https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/greatfire.txt
private         https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/private.txt
telegramcidr    https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/telegramcidr.txt
tld-not-cn      https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/tld-not-cn.txt
EOF
