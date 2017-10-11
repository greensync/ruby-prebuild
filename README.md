# ruby-prebuild

This uses Vagrant and ruby-build to prepare tarballs which you can put on servers.

## To use

```
./run
```

## MacOS
- If you run into sha256sum
```
brew install coreutils
/usr/local/bin/gsha256sum -b built_rubies/* > built_rubies/sha256
```