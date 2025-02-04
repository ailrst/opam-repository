# opam repository add pac https://github.com/ailrst/opam-repository
printf "## Package list\n\n" > packages.md

echo "| package name |homepage | synopsis | version | " >> packages.md
echo "|--------------|---------|----------|---------|" >> packages.md
opam list -A --repo pac --separator="|" --columns=name,homepage:,synopsis,version | grep -v '^#' | sed -e "s/^/|/" | sed 's/$/|/' |  sed 's/"\(.*\)"/[\1](\1)/' >> packages.md
