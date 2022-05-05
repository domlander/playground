#! /bin/bash
rm -rf builds
mkdir "builds"
cd builds

echo "Creating TCFV2 artfact..."
mkdir -p tcfv2/nodejs/node_modules
cd tcfv2
cp ../src/cmp_tcfv2.js tcfv2/nodejs/node_modules/pageLoadBlueprint.js
zip -r nodejs.zip nodejs
rm -rf nodejs
cd ..
echo "TCFV2 artifact created"

echo "Creating CCPA artifact..."
mkdir -p ccpa/nodejs/node_modules
cd ccpa
cp ../src/cmp_ccpa.js ccpa/nodejs/node_modules/pageLoadBlueprint.js
zip -r nodejs.zip nodejs
rm -rf nodejs
cd ..
echo "CCPA artifact created"

echo "Creating AUS artifact..."
mkdir -p aus/nodejs/node_modules
cd aus
cp ../src/cmp_aus.js aus/nodejs/node_modules/pageLoadBlueprint.js
zip -r nodejs.zip nodejs
rm -rf nodejs
cd ..
echo "AUS artifact created"