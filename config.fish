if status is-interactive
  # Commands to run in interactive sessions can go here

  # Enable Vi mode
  fish_vi_key_bindings
  # -- Insert Mode --
  bind -M insert -m default jk backward-char force-repaint
  # Auto complete one word (remain in insert mode)
  bind -M insert \cj forward-word
  # Auto complete entire selection, then switch to normal mode
  bind -M insert -m default \ck forward-bigword force-repaint
  # -- NORMAL MODE --
  bind -m default \$ end-of-line # SHIFT E
  bind -m default \^ beginning-of-line # SHIFT B
  # -- VISUAL MODE --
  bind -m visual \$ end-of-line
  bind -m visual \^ beginning-of-line

  # -- ENV VARIABLES -- 
  set --export DENO_INSTALL "/home/honeypot/.deno"
  fish_add_path "$DENO_INSTALL/bin"
end

