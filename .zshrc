# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export SPARK_HOME="/home/jhon/spark-3.5.3-bin-hadoop3"
export PATH=$PATH:$SPARK_HOME/bin
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export PYSPARK_PYTHON=python3
export PATH=$PATH:$JAVA_HOME/jre/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="bira"
ZSH_THEME="intheloop"
#ZSH_THEME="arrow"
#ZSH_THEME="nicoulaj"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Starts fastfetch
#if [[ $- == *i* ]]; then
 #   fastfetch
# fi

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	aliases
	chucknorris
	emoji-clock
	emotty
	codeclimate
	jsontools
	history
	copyfile
	dirhistory
	web-search
  )


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias v='vim'
alias nv='neovim'
alias c='clear'
alias pff='poweroff'
alias e='exit'
alias rbt='reboot'
alias frx='firefox'
alias downloads='cd Downloads'
alias documents='cd Documents'
alias diskpercent='df -h'
alias partitions='sudo fdisk -l'
alias last='find -mtime -1'
alias update='_ pacman -Syu'
#alias upgrade='sudo apt upgrade'
alias is='_ pacman -S '
alias py='python3'
alias config='v .zshrc'
alias matrix='unimatrix'
alias treee='tree -L 1'
alias zen='flatpak run io.github.zen_browser.zen'
alias battinfo='acpi -b'
alias uninstl="_ apt remove"
alias xct="chmod +x"
alias allin="chmod 777"
alias flatpak_free="_ rm -rf /var/lib/flatpak/repo/tmp/*"
alias contra="nmcli dev wifi show-password"
alias lwifi="nmcli dev wifi list"
alias itime="date +%H:%M:%S"
alias battpercnt="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E ""percentage"" "
alias misalias="grep 'alias' ~/.zshrc"
alias perico="curl parrot.live"
alias rick="curl ascii.live/rick"
alias coin="curl ascii.live/coin"
alias anime="ani-cli"
alias light="gammastep -O 3000"
alias conf="v .config/hypr/hyprland.conf"


autoload -Uz calc


# Para Linux con nmcli
wifi() {
    echo "Conectando a Wi-Fi usando nmcli"
    
    read "ssid?Nombre del wifi: "
    read -s "pass?Contraseña (deja vacío si es abierta): "
    echo
    
    if [[ -z "$pass" ]]; then
        nmcli device wifi connect "$ssid"
    else
        nmcli device wifi connect "$ssid" password "$pass"
    fi
    
    if [[ $? -eq 0 ]]; then
        echo "¡Conectado a $ssid!"
    else
        echo "Fallo al conectar. Revisa el nombre o contraseña."
    fi
}

autoload -U bashcompinit
bashcompinit


# Created by `pipx` on 2024-10-09 23:06:14
export PATH="$PATH:/home/jhon/.local/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/jhon/.cache/lm-studio/bin"

# qlty
export QLTY_INSTALL="$HOME/.qlty"
export PATH="$QLTY_INSTALL/bin:$PATH"

# Esto resetea los colores pero mantiene las letras de colores, quitando el fondo (bg)
export LS_COLORS='ow=01;34:di=01;34:pi=40;33:so=01;35:bd=40;33;01'
