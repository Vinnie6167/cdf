#!/bin/bash

# -l
# prints the favorite directories
cdf_list() {
  # if the file exists then it will echo the file
  if [[ -f ~/.cdf_favorites.txt ]]; then
    cat ~/.cdf_favorites.txt
  else 
    echo No favorites
  fi
}

# -a
# adds to the list of favorited directories
cdf_add() {
  # get directory 
  read -p "Directory to favorite: " NEWFAV

  # check to see if the given directory is a valid 
  if [[ ! -d $NEWFAV ]]; then
    echo "${NEWFAV} does not exist on your filesystem."
    return -1
  fi

  # correct file path
  NEWFAV=$(readlink -f $NEWFAV)

  # get nickname 
  read -p "Directory nickname: " NEWNICK

  # add to the favorites list
  echo "${NEWNICK} => ${NEWFAV}" >> ~/.cdf_favorites.txt

  # give feedback
  echo "added ${NEWNICK}"
}

# -d
# removes from the list of favorited directories
cdf_delete() {
  # get directory
  read -p "Directory to delete: " DELDIR

  # remove if it exists
  sed -i "/^${DELDIR} /d" ~/.cdf_favorites.txt

  # delete the favorites file if it is empty
  if [[ ! -s ~/.cdf_favorites.txt ]]; then
    rm ~/.cdf_favorites.txt
  fi
}

# no flag
# moves to the selected directory
cdf_go() {
  echo "cdf_go"
}

# routes commands
cdf() {
  if [[ $1 == "-l" ]]; then
    cdf_list
	elif [[ $1 == "-a" ]]; then
    cdf_add
  elif [[ $1 == "-d" ]]; then
    cdf_delete
  else
    cdf_go
  fi
}

