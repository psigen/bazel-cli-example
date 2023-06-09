#!/bin/bash
#
# Wrapper for ctlptl that uses the bazel kubectl implementation.
#
set -euo pipefail

# --- begin runfiles.bash initialization v2 ---
# Copy-pasted from the Bazel Bash runfiles library v2.
set -uo pipefail; f=bazel_tools/tools/bash/runfiles/runfiles.bash
source "${RUNFILES_DIR:-/dev/null}/$f" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "${RUNFILES_MANIFEST_FILE:-/dev/null}" | cut -f2- -d' ')" 2>/dev/null || \
  source "$0.runfiles/$f" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "$0.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "$0.exe.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null || \
  { echo>&2 "ERROR: cannot find $f"; exit 1; }; f=; set -e
# --- end runfiles.bash initialization v2 ---

# Add package versions of dependencies into the local PATH.
export PATH="$(dirname "$(rlocation com_github_helm_helm/helm)"):${PATH}"
export PATH="$(dirname "$(rlocation io_k8s_kubectl/file/kubectl)"):${PATH}"
export PATH="$(dirname "$(rlocation io_k8s_sigs_kind/file/kind)"):${PATH}"

# Switch to original working directory and execute tilt locally.
pushd "$BUILD_WORKING_DIRECTORY"
exec $(rlocation com_github_tilt-dev_ctlptl/ctlptl) $@
