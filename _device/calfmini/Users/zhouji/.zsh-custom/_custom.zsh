# Yunniao Toolkit
[[ -d "$HOME/tools/yunniao-toolkit/bin" ]] && PATH="$HOME/tools/yunniao-toolkit/bin:$PATH"

# Misc
# PATH="/usr/local/android-sdk-macosx/tools:/usr/local/android-sdk-macosx/platform-tools:$PATH"

export PATH

#export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
# /usr/libexec/java_home 2&>/dev/null && export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=/usr/local/opt/android-sdk
#export M2_HOME="/usr/local/Cellar/maven/3.2.2"
#export M2_HOME="/usr/local/Cellar/maven30/3.0.5/"

export MONO_GAC_PREFIX="/usr/local"

# Homebrew configuration
#export HOMEBREW_GITHUB_API_TOKEN=https://gist.github.com/christopheranderton/8644743

alias artisan='php artisan'

# eosio
alias cleos='docker exec -it eosio /opt/eosio/bin/cleos --url http://127.0.0.1:7777 --wallet-url http://127.0.0.1:5555'
alias cleosmain='docker exec -it eosio /opt/eosio/bin/cleos --url https://nodes.get-scatter.com --wallet-url http://127.0.0.1:5555'
alias cleosany='docker exec -it eosio /opt/eosio/bin/cleos --wallet-url http://127.0.0.1:5555'
