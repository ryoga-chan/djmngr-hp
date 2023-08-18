# DjMngr home page repository

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
~~~
