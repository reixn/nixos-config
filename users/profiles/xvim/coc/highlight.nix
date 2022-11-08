name: {pkgs, ...}: {
  xvim.${name} = {
    base.configs = [''
      " Highlight the symbol and its references when holding the cursor.
      autocmd CursorHold * silent call CocActionAsync('highlight')
    ''];

    coc.extensions = [ pkgs.vimPlugins.coc-highlight ];
  };
}