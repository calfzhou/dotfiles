#!/usr/bin/env bash

clash_rule_home="$HOME/.config/clash/providers/rule"

while read -d ' ' hash && read name; do
    echo "copy '$clash_rule_home/$hash.yaml' to '$name.yaml'"
    cp "$clash_rule_home/$hash.yaml" "$name.yaml"
done << EOF
960f9309574389197da5db2f95aade22    gfw
4783671991652a9732b3c6b4e1f760d6    greatfire
1ddfc7d71b45ca810cb6bdb776adfd27    private
69c396522c2f92b2054fb4c9d0c870bc    telegramcidr
7341d8927a178286f1b998116d96ad70    tld-not-cn
EOF
