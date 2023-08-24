# Doujinshi manager documentation

This is the home page of [djmngr](https://github.com/ryoga-chan/djmngr-hp) application.

# commands

~~~shell
gem install middleman

middleman init homepage-src && cd homepage-src

# convert erb files to haml
gem install html2haml
html2haml -e input.erb output.haml

# create pages with live preview on port 3000
bin/server  # middleman server ...

# build HTML and assets
bin/build   # middleman build

# push new version to github pages
bin/publish
~~~

# create `gh-pages` [empty branch on git](https://stackoverflow.com/questions/13969050/creating-a-new-empty-branch-for-a-new-project/13969482#13969482)

[configure](https://stackoverflow.com/questions/27680342/how-to-deploy-a-middleman-site-to-github-user-page/27687486#27687486) middleman, add in `config.rb`:

~~~shell
# disable github Jekyll magic
touch source/.nojekyll

# copy repo config and create empty branch
cp -ra .git build/
cd build
git checkout --orphan gh-pages
git rm --cached -r .
git push
~~~
