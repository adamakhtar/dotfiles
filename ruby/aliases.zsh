alias b="bundle"
alias be='bundle exec'
alias br='bin/rake'
alias brs='bin/rspec'
alias brc='bin/rails console'
alias brdp='bin/rake dev:prime'
alias migrate="bundle exec rake db:migrate db:rollback && bundle exec rake db:migrate"
alias migrate_test='bundle exec rake db:migrate RAILS_ENV=test'

# Kill rails server process e.g. `krs 3000`
function krs() { kill -9 $(lsof -i tcp:$1 -t) }

# Use ngrok with a pow domain
# See https://ngrok.com/faq
# > ngrokpow my-rails-project.dev
function ngrokpow { ~/code/archive/ngrok http -host-header=$1 80 }
