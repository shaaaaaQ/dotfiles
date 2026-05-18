set PATH /sbin ~/.bin ~/.local/bin ~/.pyenv/bin ~/.cargo/bin ~/.nimble/bin $PATH

alias ls='lsd'
alias vim='nvim'
alias :q='exit'


pyenv init --path | source
pyenv init - | source

nvm use latest --silent

alias npm="echo 'npm is disabled. Please use pnpm instead.' && false"
alias npx="echo 'npx is disabled. Please use pnpm dlx instead.' && false"

# pnpm
set -gx PNPM_HOME "/home/sh/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
