Configurations
==============

All configuration files I need to work

For each directories, there is an **install.sh** script to automatically
install configuration files.

Sometimes, you'll find another **README** to explain how I use these config.


Overview
========

These configurations files are written day by day since I began to work as a
software engineer.

I often add, modify or delete things. I discover new method or disprove old
habit.

As today, here are important stuff you can find in my configurations files.


## Color scheme

In addition to the [**redshift**](http://jonls.dk/redshift/) software, I used
the [solarized](http://ethanschoonover.com/solarized) color scheme from
**Ethan Schoonover**.

This help me to save my eyes :)

In order to apply this scheme everywere, I start with my text editor:

* VIM: https://github.com/altercation/vim-colors-solarized
* Emacs: https://github.com/sellout/emacs-color-theme-solarized

Then I colorize my with this repository:

    https://github.com/Anthony25/gnome-terminal-colors-solarized)

Here's an important tip, LS colors sucks by default with this color scheme, so
you can find your answer [here](https://github.com/seebi/dircolors-solarized)


## Terminal emulator

As I said for the colorscheme, it's important to have colors set. But it's also
important to feel confortable with your terms.

For that, I use **screen**

In screenrc your can find a little trick

    bind c screen 1
    bind ^c screen 1
    bind 0 select 10
    screen 1

These line will avoid to have a window numbered zero. It allow you to get your
first window when using the number one (on my keyboard, the first numeric key is
one, not zero)

Then I map ALT + numberKey to swithing window


Another important trick here is to automatically set window titles. For my every
day life, my terms env are set to be the root of the project I work on, so it
was pretty obvious for me to set the title with the name of the current dir
(also the name of the current project)

For that, you can find these line in the bashrc:

    function set_title() {
        if [ "screen" = ${TERM} ]; then
            echo -ne "\033k[$(echo ${PWD##*/} | cut -c1-15)]\033\\"
        fi
    }

    PROMPT_COMMAND='set_title'
    PROMPT_DIRTRIM=2
