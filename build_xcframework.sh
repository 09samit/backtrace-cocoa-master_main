xcodebuild archive \
  -workspace Backtrace.xcworkspace \
  -scheme Backtrace-iOS-lib \
  -sdk iphoneos \
  -archivePath "archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -workspace Backtrace.xcworkspace \
  -scheme Backtrace-iOS-lib \
  -sdk iphonesimulator \
  -archivePath "archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/Backtrace.framework \
   -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/Backtrace.framework \
  -output build/Backtrace.xcframework
