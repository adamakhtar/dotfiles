alias b="bundle"
alias be='bundle exec'
alias br='bin/rake'
alias brs='be rspec'
alias brsf 'be rspec --only-failures'
alias brsb='git diff --name-only master | grep _spec.rb | xargs bundle exec rspec' # run only the specs you have changed in current branch
alias brc='bin/rails console'
alias brgmig='bin/rails generate migration'
alias brgc='bin/rails generate controller'
alias brgm='bin/rails generate model'
alias bss='bin/spring stop'
alias brdp='bin/rake dev:prime'
alias brdp!='bin/rake db:drop db:create dev:prime'
alias brdbr='bin/rake db:rollback'
alias powr='powder restart'
alias pows='powder stop'
alias migrate="bundle exec rake db:migrate db:rollback && bundle exec rake db:migrate"
alias migrate_test='bundle exec rake db:migrate RAILS_ENV=test'
alias pgr='brew services restart postgres'
alias pgs='brew services stop postgres'
alias pgl='cat /usr/local/var/postgres/server.log'
alias ws='./bin/webpack-dev-server'
alias rc='be rubocop'
alias rca='be rubocop -a'

# Kill rails server process e.g. `krs 3000`
function krs() { kill -9 $(lsof -i tcp:$1 -t) }

function dbnuke() { be rake db:drop db:create && brdp }
function dbnuke_test() { be rake db:drop db:create db:schema:load RAILS_ENV=test }

# Use ngrok with a pow domain
# See https://ngrok.com/faq
# > ngrokpow my-rails-project.dev
function ngrokpow { ~/Projects/archive/ngrok http -host-header=$1 80 }
