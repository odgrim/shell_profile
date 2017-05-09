export CLICOLOR=1

alias vi="vim"
alias ll="ls -la"
alias cdgit="cd ~/dev/work/git"


function getssl () {
    echo '' | openssl s_client -showcerts -connect $1 2>/dev/null | openssl x509 -inform pem -noout -text
}

function getsslsni () {
    echo '' | openssl s_client -showcerts -servername $2 -connect $1 2>/dev/null | openssl x509 -inform pem -noout -text
}
