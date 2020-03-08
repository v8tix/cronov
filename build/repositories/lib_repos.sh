#######################################
# Debian Buster repos.
# Globals:
#   NO_ERRORS_CODE
# Arguments:
#   None
# Returns:
#   ${sources_content} String
#   NO_ERRORS_CODE
#######################################
generate_sources_content() {
read -r -d '' sources_content<<"EOF"
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
EOF

echo "${sources_content}"
return $?
}

#######################################
# Setup repos.
# Globals:
#   BASH_FOREGROUND
#   BASH_BACKGROUND
#   NO_ERRORS_CODE
# Returns:
#   NO_ERRORS_CODE
#######################################
setup_repos() {
  generate_sources_content > "/etc/apt/sources.list"
  apt update
  apt -y upgrade
  return $?
}