final: prev: {
  mill = prev.mill.override (old: {
    jre = prev.jdk;
  });
}
