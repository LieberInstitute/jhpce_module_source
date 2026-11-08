# Shared colleague-test installation

Version: 0.5.0-dev
Source commit: 462780b6025681718030847c12eccfbbadc0d1b9
Source adjustment: README quick start points to the shared test module.
Program: /jhpce/shared/libd/core/ai-singbox/0.5.0-dev
Modulefile: /jhpce/shared/libd/modulefiles/ai-singbox/0.5.0-dev.lua

On a transfer node or an existing compute allocation:

```bash
module load ai-singbox/0.5.0-dev
ai-singbox --version
ai-singbox --dry-run
ai-singbox --quiet --cmd 'printf "sandbox user: "; id -un'
```

Installed UTC: 2026-10-13T17:59:22Z
