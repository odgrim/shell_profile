export CLICOLOR=1

alias vi="nvim"
alias ll="ls -la"
alias cdgit="cd ~/dev/work/git"
alias gadl="gcloud auth application-default login"
alias megaprune="git branch | grep -v main | xargs git branch -D"
alias flakewatch="fswatch -o -r . | xargs -n1 -I {} flake8"
alias fruff="poetry run ruff format \$(git diff --name-only main)"

function getssl () {
    echo '' | openssl s_client -showcerts -connect $1 2>/dev/null | openssl x509 -inform pem -noout -text
}

function getsslsni () {
    echo '' | openssl s_client -showcerts -servername $2 -connect $1 2>/dev/null | openssl x509 -inform pem -noout -text
}
