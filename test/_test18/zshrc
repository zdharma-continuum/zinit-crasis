pushd -q $ZDOTDIR
source yn.zsh
#__yn::rvm::setup
#__yn::ohmyzsh::setup
yn::zpl::setup
popd -q

## Added by Zplugin's installer
source "${ZDOTDIR:-$HOME}/.zplugin/bin/zplugin.zsh"
### End of Zplugin's installer chunk

## YN zplugin section

#Ideally, we could run compinit just once, in a way that captures its changes to the environment
#Running compinit from this file after loading the compinit plugin doesn't work - get lots of zcompdump errors
#Not running compinit from this file at all means 'zplg cdreplay' doesn't work
#However, running it before the plugin means that we don't capture the function declarations in the compinit plugin report
autoload -Uz compinit
compinit

#Run compinit from a plugin; then we have zplugin's reports  
#FIXME: compdef is unavailable for unclear reasons
zplg load yn/compinit 


#Plugins should be prevented from running compinit
shadow_compinit=functions[compinit]
functions[compinit]=""

zplg load gcv/dotfiles
unsetopt rc_expand_param

export ZSH=/Users/yn/.zsh/.zplugin/plugins/robbyrussell---oh-my-zsh
yn::ohmyzsh::setup
zplg load robbyrussell/oh-my-zsh
functions[compinit]=shadow_compinit
zplg cdreplay -q
