# Latest ruby or GTFO
file '.ruby-version', "2.3\n"

# Mailer
environment 'config.action_mailer.default_url_options = { host: \'localhost:3000\' }', env: 'development'

# RDoc is for chumps
run 'rm -f README.rdoc'
run 'touch README.md'

# CSS? LOL!
scss = %Q(@import "*";\n)
run "echo '#{scss}' >> app/assets/stylesheets/application.scss"
run 'rm -f app/assets/stylesheets/application.css'

# ERB is for chumps
gem 'slim'
gem 'slim-rails'

# I'm lazy
gem 'twitter-bootstrap-rails'

devise = yes?('Use devise? ')
gem 'devise' if devise
gem 'paperclip' if yes?('Use paperclip? ')

gem_group :development, :test do
  # This or fabricator? Still undecided.
  gem 'factory_girl_rails'

  # MiniTest is for chumps
  gem 'rspec'
  gem 'rspec-rails'

  # IRB is for chumps
  gem 'pry'
  gem 'pry-rails'
end

run 'bundle install'

# RSpec
generate 'rspec:install'
run 'sed -i "" "s/\/fixtures/\/factories/" spec/rails_helper.rb'

# Fix the crazy comments in the routes and database files
run 'sed -i "" "/#/d" config/routes.rb'
run 'sed -i "" "/#/d" config/database.yml'
run 'sed -i "" "/^\s*$/d" config/routes.rb'
run 'sed -i "" "/^\s*$/d" config/database.yml'

# Setup the databases
run 'sed -i "" s/_development/_dev/ config/database.yml'
run 'sed -i "" s/_production// config/database.yml'
rake 'db:create'
rake 'db:create', env: 'test'

# Home page
generate 'controller home index --skip-routes --no-controller-specs --no-view-specs'
route 'root to: \'home#index\''

# Setup devise
if devise
  generate 'devise:install'
  generate 'devise user'
  generate 'devise:views'
  rake 'db:migrate'
end

# Layout
run 'rm -f app/views/layouts/application.html.erb'
generate 'bootstrap:layout application'

# Git
git :init
git add: '.'
git commit: '-a -m "Initial commit"'
git remote: "add origin git@github.com:tigris/#{app_path}.git"
