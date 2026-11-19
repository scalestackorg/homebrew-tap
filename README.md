# Scalestack Homebrew Tap

Homebrew formulas for Scalestack CLI tools.

## Install

```sh
brew install scalestackorg/tap/scalestack
```

The fully qualified name taps this repository automatically. Upgrade with
`brew upgrade scalestack`.

Equivalent explicit form (newer Homebrew requires the trust step when
tapping separately):

```sh
brew tap scalestackorg/tap
brew trust scalestackorg/tap
brew install scalestack
```

## What is the Scalestack CLI?

`scalestack` is a command-line client for the Scalestack platform: import
CSVs, run enrichment workflows, inspect and export results, and talk to the
Attento agent from a terminal or CI job. Version 0.4.0 also manages provider
API keys through 1Password.

- [API documentation](https://platform.scalestack.ai/docs)

## Authentication

```sh
export SCALESTACK_TOKEN='...'
scalestack auth status
```

See `scalestack --help` for commands, profiles, and JSON output for
automation.

## Provider keys (0.4.0)

Provider-key commands use your own 1Password CLI session and vault permissions.
They do not require `SCALESTACK_TOKEN` or a Scalestack backend login.
Install the 1Password CLI, enable its desktop app integration, and unlock the app.

```sh
op whoami
scalestack provider-key capabilities
scalestack provider-key menu
```

The menu supports automatic creation for compatible providers, saving keys
created in provider consoles, finding keys across accessible vaults, and checking
a key's validity. Keys are stored in the selected 1Password vault; access follows
that vault's permissions.

AWS backup commands require their own AWS and 1Password configuration. Installing
or upgrading the CLI does not enable scheduled AWS backups.

## Other platforms

Prebuilt archives for macOS (amd64/arm64), Linux (amd64/arm64), and Windows
(amd64) are published on the
[releases page](https://github.com/scalestackorg/homebrew-tap/releases),
each release includes a `checksums.txt` with SHA-256 digests.
