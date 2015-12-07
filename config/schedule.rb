set :output, '~/.update_log'

every '0 10 * * 1-5' do
  command 'cd ~/.rbenv/plugins/ruby-build;git pull'
  command 'cd ~/.phpenv/plugins/php-build;git pull'
  command 'nodebrew install-binary latest'
  command 'brew update;brew upgrade;brew cleanup'
end
