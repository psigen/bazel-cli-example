# Bazel CLI Example

This repo demonstrates a few useful concepts for Bazel CLI usage.

1. Using the [`tools/bazel`](./tools/bazel) script as an injection point for new CLI commands.
2. Wrapping AWS or GCP login/logout command inside bazel targets.
3. Including developer binary tooling as bazel-fetched artifacts.
