
# Tmux Setup

Symlink the configuration file to your home directory:

```
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

### Add Italics Font Support

None of this may be necessary any longer (with Alacritty on Linux.)

* References:
  * https://github.com/tmux/tmux/blob/2.1/FAQ#L355-L383
  * https://www.reddit.com/r/vim/comments/24g8r8/italics_in_terminal_vim_and_tmux/
  * https://rsapkf.netlify.app/blog/enabling-italics-vim-tmux

1. Verify (outside of tmux) that your terminal supports italics with:  `echo -e "\e[3m foo \e[23m"`
2. Verify the same thing (inside of tmux); if it works, you're done.
3. Create a new terminfo file - `tmux.terminfo`:
```
tmux|tmux terminal multiplexer,
  ritm=\E[23m, rmso=\E[27m, sitm=\E[3m, smso=\E[7m, Ms@,
  use=xterm+tmux, use=screen,
```
4. Compile it with `tic -x tmux.terminfo`.
5. Create another new terminfo file - `tmux-256color.terminfo`:
```
tmux-256color|tmux with 256 colors,
  use=xterm+256setaf, use=tmux,
```
6. Compile it with `tic -x tmux-256color.terminfo`.
7. Tell tmux to use this terminal in `tmux.conf` with: `set -g default-terminal "tmux-256color"`.

Tmux FAQ indicates this is possible with no files and a single command with the following command, but this didn't work in MacOS.
```
cat <<EOF|tic -x -
tmux|tmux terminal multiplexer,
  ritm=\E[23m, rmso=\E[27m, sitm=\E[3m, smso=\E[7m, Ms@,
  use=xterm+tmux, use=screen,

tmux-256color|tmux with 256 colors,
  use=xterm+256setaf, use=tmux,
EOF
```

For MacOS, use the following files instead:

* `tmux.terminfo`:
```
tmux|tmux terminal multiplexer,
  ritm=\E[23m, rmso=\E[27m, sitm=\E[3m, smso=\E[7m, Ms@,
  use=xterm, use=screen,
```
* `tmux-256color.terminfo`:
```
tmux-256color|tmux with 256 colors,
  use=xterm-256color, use=tmux,
```
