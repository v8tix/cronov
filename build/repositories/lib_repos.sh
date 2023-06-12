#######################################
# Debian Bullseye repos.
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
deb http://deb.debian.org/debian bookworm main non-free-firmware
deb-src http://deb.debian.org/debian bookworm main non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware
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