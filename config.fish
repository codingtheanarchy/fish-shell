
if status is-interactive
  # Commands to run in interactive sessions can go here

  # Enable Vi mode
  fish_vi_key_bindings
  # -- Insert Mode --
  bind -M insert -m default jk backward-char force-repaint
  # Auto complete one word (remain in insert mode)
  bind -M insert \cj forward-word
  # Auto complete entire selection
  bind -M insert \ck forward-bigword 
  # -- NORMAL MODE --
  bind -M default E end-of-line # SHIFT E
  bind -M default B beginning-of-line # SHIFT B
  # -- VISUAL MODE --
  bind -M visual E end-of-line
  bind -M visual B beginning-of-line

  # copy/paste on the command line 
  alias c "xclip"
  alias v "xclip -o"

  # LSD - The list command on drugs (written in rust)
  alias ls "lsd"
  alias l='ls -l'
  alias la='ls -a'
  alias lla='ls -la'
  alias lt='ls --tree'

  # -- ENV VARIABLES -- 
  set --export DENO_INSTALL "/home/honeypot/.deno"
  fish_add_path "$DENO_INSTALL/bin"
  fish_add_path "$HOME/.cargo/env"
end

