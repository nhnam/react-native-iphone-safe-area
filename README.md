
# react-native-iphone-safe-area

## Getting started

`$ npm install react-native-iphone-safe-area --save`

### Mostly automatic installation

`$ react-native link react-native-iphone-safe-area`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-iphone-safe-area` and add `RNIphoneSafeArea.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIphoneSafeArea.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIphoneSafeAreaPackage;` to the imports at the top of the file
  - Add `new RNIphoneSafeAreaPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-iphone-safe-area'
  	project(':react-native-iphone-safe-area').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-iphone-safe-area/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-iphone-safe-area')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNIphoneSafeArea.sln` in `node_modules/react-native-iphone-safe-area/windows/RNIphoneSafeArea.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Iphone.Safe.Area.RNIphoneSafeArea;` to the usings at the top of the file
  - Add `new RNIphoneSafeAreaPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNIphoneSafeArea from 'react-native-iphone-safe-area';

// TODO: What to do with the module?
RNIphoneSafeArea;
```
  