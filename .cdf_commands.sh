#!/bin/bash

# -l
# prints the favorite directories
cdf_list() {
  echo 'cdf_list'
}

# -a
# adds to the list of favorited directories
cdf_add() {
  echo 'cdf_add'
}

# -d
# removes from the list of favorited directories
cdf_delete() {
  echo 'cdf_delete'
}

# no flag
# moves to the selected directory
cdf_go() {
  echo 'cdf_go'
}

# routes commands
cdf() {
  if [[ $1 == '-l' ]]; then
    cdf_list
	elif [[ $1 == '-a' ]]; then
    cdf_add
  elif [[ $1 == '-d' ]]; then
    cdf_delete
  else
    cdf_go
  fi
}

