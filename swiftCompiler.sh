swift-source swift/utils/build-script --skip-build-benchmarks \
--swift-darwin-supported-archs "$(uname -m)" \
--release-debuginfo --swift-disable-dead-stripping \
--bootstrapping=hosttools --sccachel




sudo xcode-select --switch /Library/Developer/Toolchains/swift-6.1.xctoolchain



xcrun --toolchain swift swift --version

./utils/build-script -R


 ./utils/update-checkout --clone --scheme main
