# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z autojump common-aliases)

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
#source ~/.bash_profile

#unset DYLD_INSERT_LIBRARIES


# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
# 補完時に濁点·半濁点を <3099> <309a> のように表示させない
setopt combining_chars


#Set the Default crontab Editor 
export EDITOR=vim


#Solve flux blue problem
defaults write org.herf.Flux blackbias 0.05

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias vim='/usr/local/bin/vim'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vi='vim'
alias VI='vim'
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -l'
alias ls1='ls -1'
alias la='ls -a'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
#alias -s html=subl   # html file directly typed inside the command line will be opened by "Sublime"
#alias -s rb=subl
#alias -s py=subl       
#alias -s js=subl
#alias -s c=subl
#alias -s java=subl
#alias -s txt=subl
#alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias byd='bypy download '
alias act='source venv/bin/activate'
alias dact='deactivate'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias mpvc='mpv --cache-default 536870912'
alias comic='/Applications/DrawnStrips\ Reader.app/Contents/MacOS/DrawnStrips\ Reader'
alias deluge='/Applications/Deluge.app/Contents/MacOS/Deluge -l ~/Documents/deluge.log -L debug'

alias hconfig="subl /etc/hosts"

alias pc='ping -c '
alias pc4='ping -c 4 '
# alias ip="curl icanhazip.com" # Your public IP address
alias myip="curl ifconfig.co"
alias mycountry="curl ifconfig.co/country"
alias mycity="curl ifconfig.co/city"
alias mylocation="curl ifconfig.co/json"


alias pyserver='python -m SimpleHTTPServer'
alias phpserver='php -S localhost:8000'
alias psg='ps aux | grep -v grep | grep '   #Or use pgrep
alias lsg='ls | grep '
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias play='afplay'
alias autossh='autossh -M $(($RANDOM%6400 + 1024))'
alias del='rm -rf '
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias deluged="exec /Applications/Deluge.app/Contents/MacOS/deluged && /Applications/Deluge.app/Contents/MacOS/deluge-web"
alias llg="ls -la | grep "
alias prvultr="pingrace fra-de-ping.vultr.com ams-nl-ping.vultr.com par-fr-ping.vultr.com lon-gb-ping.vultr.com sgp-ping.vultr.com hnd-jp-ping.vultr.com nj-us-ping.vultr.com il-us-ping.vultr.com ga-us-ping.vultr.com wa-us-ping.vultr.com fl-us-ping.vultr.com tx-us-ping.vultr.com sjo-ca-us-ping.vultr.com lax-ca-us-ping.vultr.com syd-au-ping.vultr.com"
alias prdo="pingrace speedtest-nyc1.digitalocean.com speedtest-nyc2.digitalocean.com speedtest-nyc3.digitalocean.com speedtest-ams2.digitalocean.com speedtest-ams3.digitalocean.com speedtest-sfo1.digitalocean.com speedtest-sgp1.digitalocean.com speedtest-lon1.digitalocean.com speedtest-fra1.digitalocean.com speedtest-tor1.digitalocean.com"
alias prdns="pingrace 8.8.8.8 8.8.4.4 1.1.1.1 1.0.0.1 208.67.222.222 208.67.220.220"
alias proxy="export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;"
alias unproxy="unset http_proxy;unset https_proxy;"
alias sslibev="/usr/local/opt/shadowsocks-libev/bin/ss-local -c /usr/local/etc/shadowsocks-libev.json"
alias rar5="rar a -rr5 -m0 -md4096k -ma4" #-v3G
alias rclone="rclone -v"
alias gitoverwrite="git fetch --all;git reset --hard origin/master"
alias lsv="ls -1 | iconv -f utf-8-mac -t utf-8"
alias aria2c="/Applications/Aria2GUI.app/Contents/Resources/aria2c"
alias zoomreset="pmset displaysleepnow; sleep 5; caffeinate -u -t 1"
alias gitupdate="git fetch --all; git reset --hard origin/master" #https://stackoverflow.com/questions/1125968/how-do-i-force-git-pull-to-overwrite-local-files
alias hdbls='rclone lsd bbq:Sticky_HDB | grep "`date -u +"%Y%m"`\|`date  -d "+1 month" -u +"%Y%m"`"'
alias pipupgrade="python3 -m pip install --upgrade pip; python -m pip install --upgrade pip"
alias codeserver_start="screen -dmLS codeserver /Applications/code-server/code-server"
alias bazeluninstall="rm -rf $HOME/.cache/bazel; rm -rf /usr/local/bin/bazel /etc/bazelrc /usr/local/lib/bazel"
alias refreshtouchbar="sudo pkill TouchBarServer"
alias color="defaults write org.herf.Flux blackbias 0.05"
alias wifireset="sudo ifconfig en0 down; sudo ifconfig en0 up"
alias yo="open -a yoink"
alias dropboxignore="xattr -w com.dropbox.ignored 1 "
alias bci="brew cask install "
alias parallels="sudo -b /Applications/Parallels\ Desktop.app/Contents/MacOS/prl_client_app"
alias r='/usr/local/bin/r'



#[[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew –prefix`/etc/autojump.zshexport PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/sbin/

# libressl
export PATH="/usr/local/opt/libressl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libressl/lib"
export CPPFLAGS="-I/usr/local/opt/libressl/include"
export PKG_CONFIG_PATH="/usr/local/opt/libressl/lib/pkgconfig"

# make as gmake
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# curl-openssl
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/curl-openssl/lib"
export CPPFLAGS="-I/usr/local/opt/curl-openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/curl-openssl/lib/pkgconfig"




## My functions
### Simple ones
function alert () {
    sleep $1 && say finish
}

function scpr2l () {
    scp -r root@$1:$2 ./
}

function scpl2r () {
    scp -r $1 root@$2:$3
}

function scp2rooter (){
    scp -r $1 root@192.168.1.1:/mnt/sda4
}



### rclone usage
### Please set drive name as 'gd'
function rclonedmg (){
    #unset DYLD_INSERT_LIBRARIES
    if [ -d ${1} ]
    then rclone copy "${1}" gd:App/OSX/"${1}";
    else rclone copy "${1}" gd:App/OSX/; rm -ri "${1}";
    fi
    #set DYLD_INSERT_LIBRARIES
}

function rcloneexe (){
    if [ -d ${1} ]
    then rclone copy "${1}" gd:App/Windows/"${1}";
    else rclone copy "${1}" gd:App/Windows/; rm -ri "${1}";
    fi
}

function rgd (){
    if ((${#}<1))
        then echo "only $# arguement"; return
    fi
    if (($#>1))
    then s=${2}; # for ((i=2;i<=$#;i++)); s+="$*[$i]/";
    else s="";
    fi
    if [[ ${s} =~ /$ ]]; then
        :
    else
        s+="/"
    fi
    if [ -d "$1" ]
    then echo "copy $1 to gd:${s}${1}\n"; rclone -v copy "$1" gd:"${s}${1}" --exclude .DS_Store --ignore-existing
    else echo "copy $1 into gd:${s}\n"; rclone copy "$1" gd:"${s}" --ignore-existing
    fi
}

function rgdc (){
    echo "Copy folders in current location";
    IFS=$'\n'
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        if ((${#}<1)); then rgd ${i};
        else rgd ${i} ${1}; fi
        echo "\nFinished: ${i}\n\n"
    done
    unset IFS
}



### Compress
### install rar from here: www.rarlab.com
function rrmusic (){
    echo "Compress the folder using rar with 5% recovery record";
    if (($#==1)); then src="$1"; dst="$1";
    elif (($#==2)); then src="$2"; dst="$1";
    else echo "Error. Parameter must be 1 or 2.\n"; return 1; fi

    if [[ $dst != *.rar ]]; then
        if [[ $src == */ ]]; then src=${src%"/"}; fi
        if [[ $dst == */ ]]; then dst=${dst%"/"}; fi
        if [[ -d $dst && ${dst} != *${src} ]]; then
            if [[ $dst == */ ]]; then dst=${dst%"/"}; fi
            dst="${dst}/${src}"
        fi
        dst="${dst}.rar"
    fi

    if [ -f "${dst}" ]; then echo "File exists." return 1; fi
    #tmpf=".rarcompresstmp"
    #mkdir "${tmpf}"; cd "$src"; mv .* ../$tmpf/; cd ..;
    #rar5 "$dst" "$src";
    #cd "$src"; mv ../$tmpf/.* ./; cd ..; rm -rf "$tmpf";
    if [[ -d $src ]]; then removehiddenfile "$src"; fi
    echo "rar5 ${dst} ${src}"
    rar5 "$dst" "$src";
}

function rrfolder (){
    echo "Compress the folder using rar with 5% recovery record";
    if (($#==1)); then src="$1"; dst="$1";
    elif (($#==2)); then src="$2"; dst="$1";
    else echo "Error. Parameter must be 1 or 2.\n"; return 1; fi

    if [[ $dst != *.rar ]]; then
        if [[ $src == */ ]]; then src=${src%"/"}; fi
        if [[ $dst == */ ]]; then dst=${dst%"/"}; fi
        if [[ -d $dst && ${dst} != *${src} ]]; then
            if [[ $dst == */ ]]; then dst=${dst%"/"}; fi
            dst="${dst}/${src}"
        fi
        dst="${dst}.rar"
    fi

    if [ -f "${dst}" ]; then echo "File exists." return 1; fi
    echo "rar5 ${dst} ${src}"
    rar5 "$dst" "$src";
}

function rrmusicall () {
    if (($#==0)); then rrmusicalldst=".";
    elif (($#==1)); then rrmusicalldst="$1";
    else echo "Error. Parameter must be 1 or 0.\n"; return 1; fi
    IFS=$'\n'
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        if [[ -d $i ]]; then
            echo "rrmusic \"${rrmusicalldst}\" \"$i\"";
            rrmusic "${rrmusicalldst}" "$i";
            echo "################################################\n"
        fi
    done
    unset IFS
}


function unrarall () {
    IFS=$'\n'
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        if [[ $i == *.rar ]]; then folder=${i%".rar"};
        elif [[ $i == *.zip ]]; then folder=${i%".zip"};
        elif [[ $i == *.7z ]]; then folder=${i%".7z"};
        fi
        echo "unrar x \"${i}\" \"./${folder}/\"\n"
        unrar x "${i}" "./${folder}/"
        echo "###############################################\n"
    done
    unset IFS
}



### pdf processing
### install calibre first:
### brew install --cask calibre
function pdfconvert (){
    filename=$(basename -- "$1")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo ${1}
    echo ${filename}
    echo ${extension}
    if [[ ${1} == *.mobi || ${1} == *.epub || ${1} == *.azw ]]; then
        echo "ebook-convert \"${1}\" \"${filename}.pdf\""
        ebook-convert ${1} ${filename}.pdf
    elif [[ ${1} == *.txt ]]; then
        echo "ebook-convert \"${1}\" \"${filename}.pdf\""
        ebook-convert ${1} ${filename}.pdf
        if [ -f index-1.html ]; then rm -rf index-1.html; fi
    elif [[ ${1} == *.rar || ${1} == *.zip ]]; then
        tmp=pdfconverttmp"`jot -r 1 100 999`"
        echo "############## Extracting files... ##############";
        if [[ ${1} == *.rar ]]; then unrar e -idq ${1} ${tmp}/; fi
        if [[ ${1} == *.zip ]]; then unzip -qj ${1} -d ${tmp}/; fi
        #ditto -V -x -k --sequesterRsrc --rsrc FILENAME.ZIP DESTINATIONDIRECTORY
        echo "\n############## Creating pdf... ##############";
        cd ${tmp}
        IFS=$'\n'
        convert `ls -1 | grep -v .url | sort` ../${filename}.pdf
        unset IFS
        cd ..
        echo "\n############# Cleaning tmp files... ##############";
        rm -rf ${tmp}
        echo "\nFinish";
    elif [ -d ${1} ]; then
        IFS=$'\n'
        pre_path=`pwd`
        cd ${1}
        convert `ls -1 | grep -v .url | sort` ${pre_path}/`basename ${1}`.pdf
        cd ${pre_path}
        unset IFS
        echo "\nFinish"
    fi
}

function pdfconvertall () {
    IFS=$'\n'
    pre_path=`pwd`
    if [[ $# == 1 ]]; then cd ${1}; fi
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        pdfconvert ${i}
    done
    cd "${pre_path}"
    unset IFS
}

### brew install ghostscript
function compresspdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}



## System
function deletesnapshots () {
    tmutil listlocalsnapshots /
    echo -e "Do you want to delete them all? [y] to continue:\c";
    read tmpflagdeletesnapshots
    if [[ $tmpflagdeletesnapshots != "y" ]]; then echo "No delete."; return; fi
    for i in `tmutil listlocalsnapshots /`; do
        tmutil deletelocalsnapshots  ${i#com.apple.TimeMachine.}
    done
}


function removehiddenfile (){
    if (($#<1)); then echo "Need 1 argument\n"; return 1; fi
    folder=$1
    if [[ $folder == */ ]]; then folder=${folder%"/"}; fi
    cd "$folder"
    rm -f .*
    rm -rf "~$"*
    IFS=$'\n'
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        if [[ -d $i ]]; then removehiddenfile "$i"; fi
    done
    cd ..
    unset IFS
}


function setproxy () {
    if (($#==1)); then aimip="$1";
    fi
    export http_proxy="http://${aimip}"
    export https_proxy="http://${aimip}"
}





## Others

### aria2
function renametorrent () {
    tmp=`aria2c -S ${1} | grep Name`
    tmp=${tmp:6}
    mv -f ${1} ${tmp}.torrent
}

function renametorrentall () {
    IFS=$'\n'
    for i in `ls -1 | iconv -f utf-8-mac -t utf-8`; do
        renametorrent ${i}
    done
    unset IFS
}


function ffmpegmerge () {
    ffmpeg -i "${1}" -i "${2}" -acodec copy -vcodec copy output.mkv
}



function gputest () {
  python3 -c "import tensorflow as tf
print(tf.test.is_gpu_available())
sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

from keras import backend as K
K.tensorflow_backend._get_available_gpus()"
}




test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

