#! /bin/bash

# Get the wanted node version
echo "What version of node do you want to install?"
read -p "Enter semver, for example, 4.1.0: " VERSION

# Get arch version
ARCH=`uname -i`
if [ "$ARCH" = "x86_64" ] ; then
  ARCH='64'
elif [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "unknown" ] ; then
  ARCH='32'
else
  echo "Can't detect the os arcitecture."
  read -p "What architecture of operating system are you using?`\n`Enter 32 or 64: " ARCH
fi
echo "OS Architecture: $ARCH-bit"

if [ $ARCH = 32 ] ; then
  ARCH=86
  URL=http://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x${ARCH}.tar.gz
elif [ $ARCH = 64 ] ; then
  ARCH=64
  URL=http://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x${ARCH}.tar.gz
else
  printf "invalid input expted either 32 or 64 as input, quitting ... \n"
  exit
fi

ME=$(whoami)
sudo chown -R $ME /usr/local && cd /usr/local/bin
rm -rf __node-temp__
mkdir __node-temp__ && cd $_ && wget $URL -O - | tar zxf - --strip-components=1
cp -r ./lib/node_modules/ /usr/local/lib/
cp -r ./include/node /usr/local/include/
if [ ! -d /usr/local/man/man1 ] ; then
  mkdir /usr/local/man/man1
fi
cp ./share/man/man1/node.1 /usr/local/man/man1/
cp bin/node /usr/local/bin/
rm ../npm
ln -s "/usr/local/lib/node_modules/npm/bin/npm-cli.js" ../npm

echo 'node version: '
node -v
echo 'npm version: '
npm -v
