
# alias
alias optemplist='op item template list'
alias optempget='op item template get'

# Functions
# Get specific field for an item
# op item get "John's Netflix" --fields label=username,label=password --vault Entertainment

# list all the items in a category
# op item list --categories login --tags netflix,family --format json | \
# op item get -

# commands
eval "$(op completion zsh)"; compdef _op op
