

# UQ-PAC  opam repository


## Installing Packages

```sh
opam repository add pac https://github.com/ailrst/opam-repository
opam install $pkg_name
```

## Release process

- use [dune-release](https://github.com/tarides/dune-release)

`dune-release` uses the `CHANGES.md` file as the point of truth for the version number.
It creates a git tag and GitHub release with the content of the most recent tag in the change-log. 
It should be formatted something like [this example](https://raw.githubusercontent.com/UQ-PAC/aslp-rpc/refs/heads/main/CHANGES.md).
The repository must also contain a license file. By default dune-release will also try to publish
documentation to a gh-pages branch.

1. Fork this repo and clone it into your file-system.
2. Ensure you have a good `CHANGES.md` and `LICENSE` file:

```sh
dune build            # ensure you have opam files built
dune-release lint     # ensure repo is well-structured
```
  
3. Publish docs and release binary

- This will ask for your github login to create a release, upload the tarball, build and publish docs to github pages, and create a 
PR into this repository.

```sh
dune-release --opam-repo=ailrst/opam-repository
```

More info: `dune-release help`
