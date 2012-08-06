function rd {
  git branch > /dev/null 2>&1 || return 1
  cd "$(git rev-parse --show-cdup)"
}

function set_git_prompt {
  local tmp_flags
  local flags
  local branch
  branch=$(git branch --no-color 2> /dev/null | grep '*' | sed 's/\*//g' | sed 's/ //g')
  tmp_flags=$(git status --porcelain 2> /dev/null | cut -c1-2 | sed 's/ //g' | cut -c1 | sort | uniq)
  flags="$(echo $tmp_flags | sed 's/ //g')"
  if [ $branch ] || [ $flags  ]; then
    if [ $branch ]; then
      branch="\[\e[0;36m\]${branch}\[\e[0m\]"
    else
      branch="\[\e[0;36m\]waiting for first commit\[\e[0m\]"
    fi
    if [ $flags ]; then
      PS1="${BGP_ORIGINAL_PS1/\\$ /}(${branch}|\[\e[0;35m\]${flags}\[\e[0m\])\$ "
    else
      PS1="${BGP_ORIGINAL_PS1/\\$ /}(${branch})\$ "
    fi
  else
    PS1=$BGP_ORIGINAL_PS1
  fi
}


BGP_ORIGINAL_PS1=$PS1
PROMPT_COMMAND=set_git_prompt
