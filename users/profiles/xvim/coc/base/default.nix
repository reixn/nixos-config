name: {...}: {
  xvim.${name} = {
    base.configs = [ (builtins.readFile ./coc_configs.vim) ]; 
    coc.enable = true;
  };
}
