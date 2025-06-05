#! /bin/bash

# Initialize.
cd "$(dirname "$0")"
if [ ! -d "go" ]; then
	git clone "https://github.com/aileron-projects/go.git"
fi
cd go && git pull --quiet && cd ../

export CWD=$(pwd)
export WEBSITE=$(realpath "go/docs/website/")
export CONTENT=$(realpath "./")
export STATIC=$(realpath "../../static/go/")

# Copy main
cd "${WEBSITE}"
git checkout --quiet main
rm -rf "${STATIC}/main/" && mkdir -p "${STATIC}/main/"
find "./" -type f -name '*.md' -not -name 'README.md' -exec cp --parents {} "${CONTENT}/main/" \;
find "./" -type f -not -name '*.md' -exec cp --parents {} "${STATIC}/main/" \;

declare -A map
# map[v0.0.x]='^v0.0.[0-9]+$'
# map[v0.1.x]='^v0.1.[0-9]+$'
# map[v0.2.x]='^v0.2.[0-9]+$'
for key in "${!map[@]}"; do
	TAG=$(git tag --sort=-v:refname | grep -E "${map[$key]}" | head -n 1)
	echo "$key => ${map[$key]} | tag=${TAG}"
	git checkout --quiet "${TAG}"
	rm -rf "${STATIC}/$key/" && mkdir -p "${STATIC}/$key/"
	find "./" -type f -name '*.md' -not -name 'README.md' -exec cp --parents {} "${CONTENT}/$key/" \;
	find "./" -type f -not -name '*.md' -exec cp --parents {} "${STATIC}/$key/" \;
done

# Clean up.
cd "${CWD}"
rm -rf "go/"
