# Shared development installation

Version: 0.5.1-dev
Source commit: 81c058814cf92fb34f6735b7051d8ab70063e095
Source: git archive of the commit above; no source adjustments.
Program: /jhpce/shared/libd/core/ai-singbox/0.5.1-dev
Modulefile: /jhpce/shared/libd/modulefiles/ai-singbox/0.5.1-dev.lua
Installed UTC: 2026-11-06T15:44:51.371009+00:00

The shared modulefile uses an explicit program root; the source modulefile
uses its own location for repository development. Both expose bin/ on PATH,
including ai-singbox-codex and its jcodex alias. Version 0.5.0-dev is retained.

Validation: 15 isolated launcher tests and 85 wrapper checks passed on
transfer-01 before deployment. Post-install discovery, preview and runtime
checks are recorded in the project task. Compute-node checks are pending;
no new HPC allocation or model requests were made.
