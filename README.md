# Scalestack Homebrew Tap

Homebrew formulas for Scalestack CLI tools.

## Install

```sh
brew tap scalestackorg/tap
brew trust scalestackorg/tap   # newer Homebrew requires trusting third-party taps
brew install scalestack
```

Upgrade with `brew upgrade scalestack`.

## What is the Scalestack CLI?

`scalestack` is a command-line client for the Scalestack platform: import
CSVs, run enrichment workflows, inspect and export results, and talk to the
Attento agent from a terminal or CI job.

- [API documentation](https://platform.scalestack.ai/docs)

## Authentication

```sh
export SCALESTACK_M2M_TOKEN='...'
scalestack auth status
```

See `scalestack --help` for commands, profiles, and JSON output for
automation.

## Other platforms

Prebuilt archives for macOS (amd64/arm64), Linux (amd64/arm64), and Windows
(amd64) are published on the
[releases page](https://github.com/scalestackorg/homebrew-tap/releases),
each release includes a `checksums.txt` with SHA-256 digests.
