## Racket Project Template

<div align="center">
  <picture>
    <img alt="Racket Logo" src="logo.svg" height="30%" width="30%">
  </picture>
</div>
<br>

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-racket-project/tests.yml?label=tests&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-racket-project/actions/workflows/tests.yml)
[![Code Coverage](https://img.shields.io/codecov/c/github/habedi/template-racket-project?label=coverage&style=flat&labelColor=282c34&logo=codecov)](https://codecov.io/gh/habedi/template-racket-project)
[![CodeFactor](https://img.shields.io/codefactor/grade/github/habedi/template-racket-project?label=code%20quality&style=flat&labelColor=282c34&logo=codefactor)](https://www.codefactor.io/repository/github/habedi/template-racket-project)
[![Docs](https://img.shields.io/badge/docs-latest-007ec6?label=docs&style=flat&labelColor=282c34&logo=readthedocs)](docs)
[![License](https://img.shields.io/badge/license-MIT-007ec6?label=license&style=flat&labelColor=282c34&logo=open-source-initiative)](https://github.com/habedi/template-racket-project)
[![Release](https://img.shields.io/github/release/habedi/template-racket-project.svg?label=release&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-racket-project/releases/latest)

This is a project template for Racket projects.
It provides a minimalistic project structure with pre-configured GitHub Actions, Makefile,
and configuration files for development tools.
It is intended as a starting point for Racket projects, making it easier to start development of new Racket libraries
and applications quickly.
I share it here in case it might be useful to others.

### Features

- Minimalistic project structure
- Pre-configured GitHub Actions for running tests and code coverage
- Makefile for managing the development workflow and tasks like code formatting, testing, linting, etc.
- GitHub badges for tests, code quality and coverage, documentation, etc.
- [Code of Conduct](CODE_OF_CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md)

### Getting Started

Check out the [Makefile](Makefile) for available commands to manage the development workflow of the project.

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

This template is primarily to be used on Debian-based GNU/Linux systems. However, with some modifications,
it should be usable on other platforms as well.

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to make a contribution.

### License

This project is licensed under the MIT License ([LICENSE](LICENSE) or https://opensource.org/licenses/MIT)
