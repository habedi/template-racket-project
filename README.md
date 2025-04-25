## Racket Project Template

<div align="center">
  <picture>
    <img alt="Racket Logo" src="logo.svg" height="30%" width="30%">
  </picture>
</div>
<br>

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-racket-project/tests.yml?label=tests&style=flat&logo=github)](https://github.com/habedi/template-racket-project/actions/workflows/tests.yml)
[![Code Coverage](https://badgen.net/https/habedi.github.io/template-racket-project/badge.json)](https://habedi.github.io/template-racket-project)
[![CodeFactor](https://img.shields.io/codefactor/grade/github/habedi/template-racket-project?label=code%20quality&style=flat&logo=codefactor)](https://www.codefactor.io/repository/github/habedi/template-racket-project)
[![Docs](https://img.shields.io/badge/docs-latest-007ec6?label=docs&style=flat&logo=readthedocs)](docs)
[![License](https://img.shields.io/badge/license-MIT-007ec6?label=license&style=flat&logo=open-source-initiative)](https://github.com/habedi/template-racket-project)
[![Release](https://img.shields.io/github/release/habedi/template-racket-project.svg?label=release&style=flat&logo=github)](https://github.com/habedi/template-racket-project/releases/latest)

This is a template for Racket projects.
It provides a minimalistic project structure with pre-configured GitHub Actions, a Makefile,
and configuration files for development tools.
The template is intended as a starting point to make it easier to begin development of new Racket libraries
and applications.
I’m sharing it here in case it’s useful to others.

### Features

- Minimalistic project structure
- Pre-configured GitHub Actions for running tests and tracking code coverage
- Makefile for managing the development workflow and tasks like code formatting, testing, generating documentation, etc.
- GitHub badges for tests, code quality and coverage, documentation, etc.
- [Code of Conduct](CODE_OF_CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md)

### Getting Started

Check out the [Makefile](Makefile) for available commands to manage the development workflow.

```shell
# Install system and development dependencies (for Debian-based systems)
sudo apt-get install make
make install-deps
```

```shell
# See all available commands and their descriptions
make help
```

### Platform Compatibility

This template is primarily intended for Debian-based GNU/Linux systems. However, with some adjustments,
it should work on other platforms too.

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to make a contribution.

### License

This project is licensed under the MIT License ([LICENSE](LICENSE) or https://opensource.org/licenses/MIT)
