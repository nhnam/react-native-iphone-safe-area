
import { NativeModules, Platform } from 'react-native';

const { RNIphoneSafeArea } = NativeModules;

export default RNIphoneSafeArea;

if (Platform.OS === "android") {
    module.exports = {
        hasNotch: function () {
            return RNIphoneSafeArea.hasNotch();
        }
    };
} else if (Platform.OS === "ios") {
    module.exports = {
        hasNotch: function () {
            return RNIphoneSafeArea.hasNotch();
        }
    }
}