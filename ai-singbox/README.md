# Installation

ai-singbox provides a host-root Singularity sandbox for Codex, Claude Code,
or a shell. Storage is mounted read-only except explicitly selected write
paths, scratch, the session home and temporary directories. No container image
or AI-agent binary is distributed here.

- Upstream: https://github.com/gpertea/jhpce-singbox
- Modulefiles: https://github.com/LieberInstitute/jhpce_module_config/tree/SLURM/ai-singbox
- Program root: `/jhpce/shared/libd/core/ai-singbox/<version>`
- Module root: `/jhpce/shared/libd/modulefiles/ai-singbox`

Only this recipe, `.gitignore`, the original version-specific
`INSTALLATION.md` records and a small source patch are tracked here.
Version-specific `README.md` files remain installed upstream user guides;
they are excluded along with scripts, rootfs skeletons and all other payloads.

| Version | Pinned upstream base | Source reconstruction |
|---|---|---|
| `0.5.0-dev` | `462780b6025681718030847c12eccfbbadc0d1b9` | Base source; historical install also adjusted user-guide quick-start examples |
| `0.5.1-dev` | `462780b6025681718030847c12eccfbbadc0d1b9` | Apply `0.5.1-dev/source.patch`; exact source tree of local commit `81c058814cf92fb34f6735b7051d8ab70063e095` |

The `0.5.1-dev` source commit was not yet published on upstream `devel` when
this recipe was written. The committed ASCII patch makes reconstruction
independent of that unpublished commit. The patch omits context-only lines
(use `git apply --unidiff-zero`) to avoid whitespace-only lines in this
recipe repository. Its resulting Git tree must equal
`81e2636a24377510272f1f12fe866bb23b527889`; changing either source pin or patch
requires a new version and validation.

## Prerequisites

Use an existing authorized transfer/compute environment and the
`lieber_modules` primary group (`newgrp lieber_modules`, or `sg` for a single
command). Group membership alone may not suffice for NFS Git access. These
commands do not allocate compute; do not submit jobs for installation or
validation without separate resource approval.

Required: Bash, Git, tar, coreutils, Python 3, JHPCE Lmod, mounted site storage,
and `/jhpce/shared/jhpce/core/singularity/3.11.4/bin/singularity`.
The upstream fetch requires authorized GitHub SSH access, as in other LIBD
module recipes; anonymous HTTPS access was unavailable in the review shell.
No SSH keys are copied into the installation or sandbox.
The source includes its own LIBD read-only storage profile. No compiler,
Singularity image build, pip/npm installation, or root privileges are needed.

Codex and Claude are external user/site installations, excluded from both
repositories and from this recipe. The Codex launcher also loads the host
`node` module and requires a CLI supporting `--no-daemon`. The wrapper source
is reproducible here; separately changing agent/Node versions or site mounts
can change the runtime environment.

## Reconstruct the current source

Run from a writable project/build workspace. Keep the source-repository
checkout and this recipe available; do not use an installed payload as the
source of a new installation.

```bash
set -euo pipefail
recipe_root=/jhpce/shared/libd/core/ai-singbox
version=0.5.1-dev
base_commit=462780b6025681718030847c12eccfbbadc0d1b9
expected_tree=81e2636a24377510272f1f12fe866bb23b527889
build_dir=$(mktemp -d "$PWD/ai-singbox-build.XXXXXX")

## fetch only the published pinned base, then reconstruct the exact source tree
source_repo="$build_dir/source"
git init "$source_repo"
git -C "$source_repo" fetch --depth 1 git@github.com:gpertea/jhpce-singbox.git "$base_commit"
git -C "$source_repo" checkout --detach FETCH_HEAD
git -C "$source_repo" apply --unidiff-zero --check --index "$recipe_root/$version/source.patch"
git -C "$source_repo" apply --unidiff-zero --index "$recipe_root/$version/source.patch"
source_tree=$(git -C "$source_repo" write-tree)
test "$source_tree" = "$expected_tree"
```

For legacy `0.5.0-dev`, use the same base without applying the patch.
Its historical README-only adjustment is documented in
`0.5.0-dev/INSTALLATION.md`; no historical payload is overwritten by this
recipe. The current reconstruction above reproduces the complete `0.5.1-dev`
source tree, including its installed user guide.

## Install the reconstructed source

The version directory may already contain these tracked recipe files. Refuse
any existing runtime payload; do not overlay/reinstall a deployed version.
The paired config checkout supplies the versioned Lua modulefile directly;
its explicit program root must match `prefix` below.

```bash
## continue in the same shell after verifying source_tree above
prefix="/jhpce/shared/libd/core/ai-singbox/$version"
for payload in bin libexec share VERSION MANIFEST.sha256; do
    test ! -e "$prefix/$payload" || {
        printf 'Refusing existing payload: %s\n' "$prefix/$payload" >&2
        exit 1
    }
done
mkdir -p "$prefix"
git -C "$source_repo" archive "$source_tree" | tar -x -C "$prefix"
bash "$prefix/libexec/make-rootfs"
printf '%s\n' "$version" > "$prefix/VERSION"

## installed runtime files remain readable/executable, never group/other writable
chgrp -R lieber_modules "$prefix"
chmod -R a+rX,go-w "$prefix"
(
    cd "$prefix"
    find . -maxdepth 8 -type f ! -name MANIFEST.sha256 -print0 |
        LC_ALL=C sort -z | xargs -0 sha256sum > MANIFEST.sha256
)
chmod a+r,go-w "$prefix/MANIFEST.sha256"
```

Run permission commands with the `lieber_modules` primary group as above.
Only the new version tree is changed. Recipe/modulefile collaboration follows
the repositories' group-access policy; the runtime tree intentionally follows
ai-singbox's stricter installed-payload permissions. Do not recursively change
other modules or the shared `.git` directories.

`make-rootfs` creates empty mount points and host usr-merge symlinks, plus the
empty SSH mask. It neither downloads nor builds a container image. Actual
system/software trees are bound read-only at launch. Host binaries, mount
layout, Lmod defaults and node OS remain runtime dependencies.

## Validate and use

Temporarily disable nounset around Lmod, whose functions reference unset
variables. These discovery/version/preview commands start no agent session:

```bash
set +u
module use /jhpce/shared/libd/modulefiles
module load ai-singbox/0.5.1-dev
module show ai-singbox/0.5.1-dev
command -v ai-singbox ai-singbox-codex jcodex
ai-singbox --version
ai-singbox-codex --write-here --dry-run
module unload ai-singbox/0.5.1-dev
set -u
(cd "$prefix" && sha256sum --check MANIFEST.sha256)
```

The launcher lists writable/read-only folders, customization paths and profile
instructions, then requires Enter before starting Codex inside Singularity.
`--write-here` explicitly grants the current directory through the wrapper's
safety checks; repeatable `--write PATH` adds other existing directories.
Defaults: `~/.config/ai-singbox/config`; persistent read/write entries:
`~/.config/ai-singbox/profiles/NAME.conf`, selected with `--profile NAME`.
Sandbox agent settings/logins are separate from the host's.

The source exports `tests/test_codex_launcher.py` and `tests/test_wrapper.sh`.
The wrapper suite performs real containment probes and needs scratch and a
writable source/test checkout; do not run it against a deployed read-only
program tree. Run compute-node validation only within explicitly approved
resources. Interactive model requests and agent updates are not recipe checks.

Rollback for an existing shell: unload `ai-singbox/0.5.1-dev`, then explicitly
load `ai-singbox/0.5.0-dev`. Both installations and modulefiles are retained.

# Reproducibility

Original install records are preserved in each version's `INSTALLATION.md`.
`0.5.1-dev` was installed from commit `81c0588` on 2026-11-06. Transfer-node
validation passed 15 isolated launcher tests, 85 wrapper checks, actual Codex
0.167.0 launch after Enter, and write-containment probes. Compute-node and
interactive model-session validation remained pending.

Recipe review on 2026-11-08: `gpertea1`, `transfer-01`, Rocky Linux 9.4,
kernel `5.14.0-427.24.1.el9_4.x86_64`, SingularityCE 3.11.4. Loaded modules:
`conda/3-24.3.0`, `conda_R/4.5.x`, `node/24.11`,
`JHPCE_ROCKY9_DEFAULT_ENV`, `JHPCE_tools/3.0`. This records the review shell,
not an assertion that every listed module is required or used by the wrapper.

Recipe verification fetched the pinned base via SSH, reconstructed the expected
Git tree, and compared all 39 source files and executable/symlink modes with
both a project-local export and the shared installation. Local export checksums
passed. Both shared module versions passed load/unload, executable-path and
version checks; the current wrapper dry-run passed. No existing shared payload
was reinstalled, no model request was made, and no HPC allocation was created.

## Version control

In `jhpce_module_source`, stage only:

```bash
git add -- ai-singbox/.gitignore ai-singbox/README.md \
    ai-singbox/0.5.0-dev/INSTALLATION.md \
    ai-singbox/0.5.1-dev/INSTALLATION.md ai-singbox/0.5.1-dev/source.patch
git diff --cached --stat
git diff --cached --numstat
```

In `jhpce_module_config`, stage only the two versioned Lua files. Do not add
installed scripts, rootfs, binaries, archives, logs, credentials or other
modules. Review text types and sizes before committing; pushing is a separate
action.
