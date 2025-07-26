{
  security.doas.enable = true;
  security.sudo.enable = true;
  security.doas.extraRules = [{
    users = ["petrup"];
    keepEnv = true;
  }];
}
