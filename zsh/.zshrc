
# The following lines were added by compinstall

zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _extensions
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
#zstyle ':completion:*' format ''\'' %d'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
#ls -la style
#zstyle ':completion:*' file-list all
zstyle ':completion:*' glob 1
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
#zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/lain/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob globdots
unsetopt autocd nomatch notify

# Plugins
source "$HOME/.zsh_plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
source "$HOME/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Vi keybindings
bindkey -v
# End of lines configured by zsh-newuser-install
eval "$(starship init zsh)"
source $HOME/.aliases
source $HOME/.aliases_private
# Add user homedir bin folder to PATH
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
# Add Ruby gems to PATH
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
export GEM_HOME="$HOME/gems"
export MANPAGER='nvim +Man!'
export EDITOR='nvim'
cat ~/.cache/wal/sequences
# Golang environment variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

# Update PATH to include GOPATH and GOROOT binaries
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

# Loop through all files in the ~/.config/fabric/patterns directory
for pattern_file in $HOME/.config/fabric/patterns/*; do
    # Get the base name of the file (i.e., remove the directory path)
    pattern_name=$(basename "$pattern_file")

    # Create an alias in the form: alias pattern_name="fabric --pattern pattern_name"
    alias_command="alias $pattern_name='fabric --pattern $pattern_name'"

    # Evaluate the alias command to add it to the current shell
    eval "$alias_command"
done

yt() {
    local video_link="$1"
    fabric -y "$video_link" --transcript
}
export OLLAMA_HOST="http://localhost:11434"
