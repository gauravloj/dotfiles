# Useful alias
alias selia='alias | grep '
alias ggpullr='git pull --rebase origin main'
alias jupyter='pipenv run jupyter lab'
alias pyrun='pipenv run'
alias pyshell='pipenv shell'
alias pvim='pipenv run nvim'
alias rmrf='rm -rf'
alias h='history'
alias hs='history | grep'
alias hsi='history | grep -i'
alias hsbuilt='builtin history'
alias n="nvim"
alias top="top -stats pid,command,cpu,mem,ports,threads,username -n20"
alias mansearch="man -K"
alias say="say -v  Veena"
# alias sshvisual='ssh -T git@github.com -o VisualHostKey=yes'


# helpful coding aliases
alias ghlatestbuildstatus="gh run list -L 1 | cut -f7 | xargs -n 1 gh run watch"
alias ghprnew="gh pr create --fill"  # create new pr from curr branch to main branch
alias ghprsquash="gh pr merge --squash" # merge active pull request for current branch


# most used projects
alias ahncd="cd /Users/mihawk/Desktop/open-projects/ahn_web"
alias leetcd="cd /Users/mihawk/Desktop/pipenvtest/leetcode"
alias sarcd="cd /Users/mihawk/Desktop/pipenvtest/webip/ipinjp/"
alias dotfilescd="cd /Users/mihawk/workshop/dotfiles"
alias bookscd="cd /Users/mihawk/Desktop/bakup/desktop/learning/"
alias labcd="cd /Users/mihawk/Desktop/pipenvtest/lab/"
alias medcd="cd /Users/mihawk/Desktop/pipenvtest/temprator/"
# alias homeaddr='echo "home address" | pbcopy'

# chrome alias
alias chromtech='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 13"'
alias chromvaa='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 1"'
alias chromnaa='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 5"'
alias chrommk='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 7"'
alias chromitb='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 14"'
alias chromsiv='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Profile 15"'
alias chrompoc='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --profile-directory="Default"'

# Directory shorthand
hash -d sarweb="/Users/mihawk/Desktop/pipenvtest/webip/ipinjp"
hash -d ahn="/Users/mihawk/Desktop/open-projects/ahn_web"
hash -d leet="/Users/mihawk/Desktop/pipenvtest/leetcode"
hash -d dotfiles="/Users/mihawk/workshop/dotfiles"
hash -d lab="/Users/mihawk/Desktop/pipenvtest/lab/"
