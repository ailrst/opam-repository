# opam repository add pac https://github.com/ailrst/opam-repository
printf "## Package list\n\n" > packages.md

opam list -A --repo pac --columns=name,synopsis,version,homepage: | sed 's/^/    /' >> packages.md
