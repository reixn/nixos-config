{ ... }: {
  programs.bottom = {
    enable = true;
    settings = {
      flags = {
        tree = true;
        battery = true;
        enable_gpu_memory = true;
      };
    };
  };
}