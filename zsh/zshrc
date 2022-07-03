# theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# zshrc plugs
# autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# highlight
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history substring search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# z.lua enhanced
eval "$(lua /usr/local/share/z.lua/z.lua  --init zsh once enhanced)"

# uplowworktab
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# plugs

# android
export ANDROID_HOME=/usr/local/share/android-commandlinetools
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/32.0.0

# flutter env
# export PUB_HOSTED_URL=http://pub.lan.wiqun.com
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# conda
alias cca="source /usr/local/Caskroom/miniconda/base/bin/activate"

# 禁止brew自动更新
export HOMEBREW_NO_AUTO_UPDATE=true

# export go bin
export PATH=$PATH:~/go/bin

# alias
alias ls="ls --color=auto"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
