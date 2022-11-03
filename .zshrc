# Display message prompt
echo "What do you notice?"

# Aliases
alias xcode="open -a Xcode"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Determine if current working directory is a git repository
git_branch_color() {
  if current_git_status=$(git status 2> /dev/null); then
    parse_git_dirty
  else
    echo ""
  fi
}

# Change branch color if working tree is clean
parse_git_dirty() {
  if current_git_status=$(git status | grep 'Changes to be committed:\|Untracked files:\|modified:|deleted:' 2> /dev/null); then
    echo "%F{red}"
  else
    echo "%F{green}"
  fi
}

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{magenta}%d
$(git_branch_color)${vcs_info_msg_0_}%f🌀 '

# added by travis gem
[ -f /Users/aaronburris-deboskey/.travis/travis.sh ] && source /Users/aaronburris-deboskey/.travis/travis.sh

# path for postgres
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# added by travis gem
[ -f /Users/aaron/.travis/travis.sh ] && source /Users/aaron/.travis/travis.sh

