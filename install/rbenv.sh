echo "[dotfiles] installing rbenv:"
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
exec $SHELL -l
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "[dotfiles] installing ruby:"
rbenv install 2.0.0-p353
rbenv global 2.0.0-p353
rbenv rehash

echo "[dotfiles] installing rbenv plugins:"
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
git clone git://github.com/tpope/rbenv-communal-gems.git ~/.rbenv/plugins/rbenv-communal-gems
rbenv communize --all
rbenv rehash

echo "[dotfiles] installing gems:"
gem update --system
gem update
gem install bundler gem-browse lunchy
gem cleanup
