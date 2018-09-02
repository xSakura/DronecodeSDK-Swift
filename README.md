# Dronecode-SDK-Swift

## Use framework in iOS application

### Get using carthage

To use this framework, add this to your `Cartfile`:

```
github "Dronecode/DronecodeSDK-Swift" "master"
```

## Develop on this framework

### Build

To compile this framework, you need to build the dependencies first:
```
carthage build --platform ios --no-skip-current --verbose
```

Then you can open `Dronecode-SDK-Swift.xcodeproj` in XCode and build it, or do:
```
xcodebuild -scheme Dronecode-SDK-Swift
```

### Generate docs

**Note**: The docs are generated in travis-ci for the master branch and pushed to a [s3 bucket](http://dronecode-sdk-swift.s3.eu-central-1.amazonaws.com/docs/master/index.html).

To test the doc generation locally, install [jazzy](https://github.com/realm/jazzy):

```
gem install jazzy
```

Then, to generate the docs, just run:
```
./generate_docs.sh
```

