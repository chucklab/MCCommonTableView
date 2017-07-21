# MCCommonTableView
[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/chucklab/MCCommonTableView/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Pod Version](https://img.shields.io/cocoapods/v/MCCommonTableView.svg?style=flat)](https://cocoapods.org/pods/MCCommonTableView)
[![Pod Platform](https://img.shields.io/cocoapods/p/MCCommonTableView.svg?style=flat)](https://cocoapods.org/pods/MCCommonTableView)
[![Support](https://img.shields.io/badge/support-iOS%206%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)
[![Build Status](https://img.shields.io/travis/chucklab/MCCommonTableView/master.svg?style=flat)](https://travis-ci.org/chucklab/MCCommonTableView)
[![Coverage Status](https://codecov.io/github/chucklab/MCCommonTableView/coverage.svg?branch=master)](https://codecov.io/github/chucklab/MCCommonTableView?branch=master)
[![Reference Status](https://www.versioneye.com/objective-c/MCCommonTableView/reference_badge.svg?style=flat)](https://www.versioneye.com/objective-c/MCCommonTableView/references)

A table view for common use, have fun.

![Screen-Shot-01-w100](Screenshots/Screen-Shot-01.png)

## Installation
### Cocoapods:

1. Add `pod 'MCCommonTableView', '~> 0.0.1'` to your Podfile.
2. Run `pod install` or `pod update`.
3. Import \<MCCommonTableView.h\>.

### Carthage:

1. Add `github "chucklab/MCCommonTableView"` to your Cartfile.
2. Run `carthage update --platform ios` and add the framework to your project.
3. Import \<MCCommonTableView/MCCommonTableView.h\>.

## Usage

```objc
// Example
MCCommonTableView *tableView = [MCCommonTableView tableViewWithFrame:self.view.bounds];
[self.view addSubview:tableView];
tableView.dataMap = @{
                      @"Day One" : @{
                              @"1. Normal" : ^(){ NSLog(@"Normal, tapped."); },
                              @"2. Multi lines" : ^(){ NSLog(@"Multi, tapped."); },
                              @"3. Long single line" : ^(){ NSLog(@"Long, tapped."); },
                              @"4. Very long text" : ^(){ NSLog(@"Very, tapped."); },
                              @"5. No message" : ^(){ NSLog(@"No, tapped."); }
                              },
                      @"Day two" : @{
                              @"1. Normal" : ^(){ NSLog(@"Normal, tapped."); },
                              @"2. Multi lines" : ^(){ NSLog(@"Multi, tapped."); },
                              @"3. Long single line" : ^(){ NSLog(@"Long, tapped."); },
                              @"4. Very long text" : ^(){ NSLog(@"Very, tapped."); },
                              @"5. No message" : ^(){ NSLog(@"No, tapped."); }
                              }
                      };
```

## Requirements
This library requires a deployment target of iOS 6.0 or greater.

## License
MCCommonTableView is provided under the MIT license. See LICENSE file for details.

