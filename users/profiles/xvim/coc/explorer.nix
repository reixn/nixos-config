name: {pkgs, ...}: {
  xvim.${name} = {
    base.configs = [''
      nmap <space>e <Cmd>CocCommand explorer<CR>
    ''];

    coc.extensions = [ pkgs.vimPlugins.coc-explorer ];
  };
}
