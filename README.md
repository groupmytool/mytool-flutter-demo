# my_tool

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:      

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# build

## iOS

### 方式1
```shell
# 预编译和环境准备
rm -rf .dart_tool/
rm -rf build/
flutter build ios --release
mkdir -p ./build/ios/Payload
cp -rf ./build/ios/Release-iphoneos/Runner.app ./build/ios/Payload
cd ./build/ios && zip -r myTool.ipa Payload && cd ../..
# https://esign.yyyue.xyz
```

### 方式2
```shell
# 预编译和环境准备
flutter build ios --release
# xcode操作
# 1、product => archive
# 2、生成的archives所在文件目录：/Users/adolphor/Library/Developer/Xcode/Archives
# 3、显示包内容 -> Products -> Applications
# 4、创建 Payload 文件夹，将 Runner 拖拽到文件夹内
# 5、压缩为zip包，并修改文件后缀为ipa，也可以将文件名修改为自己想要的名字
# 6、使用爱思助手安装到手机即可
```

## macos
```shell
flutter build macos --release -t lib/main.dart
cd ./build/macos/Build/Products/Release/ && open . 
```


## 参考
* [网速监控组件](https://pub.dev/packages/internet_speed_test)
* [在Flutter中在网速小于100kb时显示消息](https://www.volcengine.com/theme/4768282-R-7-1)
* [flutter实战之常用模块：network_info_plus模块及其应用](https://bbs.huaweicloud.com/blogs/405630)
* [Flutter 集成 Golang ](https://juejin.cn/post/7109806986006364196)

