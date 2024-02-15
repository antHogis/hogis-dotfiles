#!/bin/zsh

# Returns directory name corresponding to alias
#
# Usage: get-dir-by-alias.sh my-alias
#
# A JS script to create aliases for directories:
#
# // Dirs as a string separated by newlines
# const reposArray = repos.split('\n');
# for (const repo of reposArray) {
# 	const nameSegments = repo.split('-');
# 	if (nameSegments.length < 2) 
# 		continue;
# 
# 	const shortname = nameSegments.map(seg => seg[0]).join('');
# 	console.log(`${shortname})\n\tDIR="${repo}"\n\t;;`);
# }

set -euo pipefail

REPO_DIR="${HOME}/repos"
DIR="${REPO_DIR}/${1}"

# Repo aliases
case $1 in 
ba)
	DIR="${REPO_DIR}/booker-api"
	;;
ci)
	DIR="${REPO_DIR}/circleci-utils-orb"
	;;
ca)
	DIR="${REPO_DIR}/commander-api"
	;;
ds)
	DIR="${REPO_DIR}/dispatch-service"
	;;
es)
	DIR="${REPO_DIR}/engine-service"
	;;
ew)
	DIR="${REPO_DIR}/engine-worker"
	;;
fx)
	DIR="${REPO_DIR}/flex-api"
	;;
fa)
	DIR="${REPO_DIR}/flygtaxi-agent"
	;;
ga)
	DIR="${REPO_DIR}/garage-api"
	;;
ic)
	DIR="${REPO_DIR}/icabbi-client"
	;;
ir)
	DIR="${REPO_DIR}/icabbi-router"
	;;
is)
	DIR="${REPO_DIR}/icabbi-service"
	;;
ip)
	DIR="${REPO_DIR}/init-project"
	;;
ls)
	DIR="${REPO_DIR}/label-service"
	;;
lm)
	DIR="${REPO_DIR}/link-manager"
	;;
la)
	DIR="${REPO_DIR}/loki-api"
	;;
ma)
	DIR="${REPO_DIR}/meneva-api"
	;;
mi)
	DIR="${REPO_DIR}/mock-icabbi"
	;;
ni)
	DIR="${REPO_DIR}/nike-infra"
	;;
nv)
	DIR="${REPO_DIR}/nike-validators"
	;;
orc)
	DIR="${REPO_DIR}/operation-red-cobra"
	;;
rb)
	DIR="${REPO_DIR}/ride-backend"
	;;
rf)
	DIR="${REPO_DIR}/ride-frontend"
	;;
rm)
	DIR="${REPO_DIR}/ride-mini"
	;;
sr)
	DIR="${REPO_DIR}/socket-relay"
	;;
sa)
	DIR="${REPO_DIR}/suti-api"
	;;
sb)
	DIR="${REPO_DIR}/suti-broker"
	;;
sl)
	DIR="${REPO_DIR}/suti-link"
	;;
st)
	DIR="${REPO_DIR}/suti-transports"
	;;
tb)
	DIR="${REPO_DIR}/trip-booker"
	;;
ts)
	DIR="${REPO_DIR}/trip-stash"
	;;
vg)
	DIR="${REPO_DIR}/vehicle-gateway"
	;;
va)
	DIR="${REPO_DIR}/vinka-api"
	;;
vb)
	DIR="${REPO_DIR}/vinka-booker"
	;;
esac

# Misc aliases
case $1 in
dlc)
	DIR="${HOME}/personal/daylog-c"
	;;
dotf)
	DIR="${HOME}/personal/hogis-dotfiles"
	;;
ex)
	DIR="${HOME}/experiment"
	;;
nvim)
	DIR="${HOME}/.config/nvim"
	;;
esac

echo "${DIR}"

