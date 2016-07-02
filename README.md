# DOFlatButton

[![CI Status](http://img.shields.io/travis/岡大輔/DOFlatButton.svg?style=flat)](https://travis-ci.org/岡大輔/DOFlatButton)
[![Version](https://img.shields.io/cocoapods/v/DOFlatButton.svg?style=flat)](http://cocoapods.org/pods/DOFlatButton)
[![License](https://img.shields.io/cocoapods/l/DOFlatButton.svg?style=flat)](http://cocoapods.org/pods/DOFlatButton)
[![Platform](https://img.shields.io/cocoapods/p/DOFlatButton.svg?style=flat)](http://cocoapods.org/pods/DOFlatButton)

![実行画像](https://github.com/daisukeokaoss/DOFlatButton/blob/master/iOS%20Simulator%20Screen%20Shot%202015.06.18%2010.16.35.png)

##Propertys 
###face Color
A surface color of the button

`button.faceColor = = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)`

###sideColor
A side color of the button

`button.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)`

##borderColor
A border color of the button

`button.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)`

##cornerRadius
A corner raius of the button

`button.radius = 8.0`

##height
A button height in normal state

`button.margin = 4.0`

##depth
A button depth when the button pushed down

`button1.depth  = 3.0`

##borderWidth
A border width of the button

`button.borderWidth = 2.0`

##Example

var button1:DOFlatButton = DOFlatButton.buttonWithType(UIButtonType.Custom) as DOFlatButton

```swift
button1.frame = CGRectMake(60, 164 - 20 - 40, 200, 60)  
button1.faceColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)  
button1.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)  
button1.radius = 8.0  
button1.margin = 4.0  
button1.depth  = 3.0  
button1.titleLabel?.font = UIFont.boldSystemFontOfSize(16)  
button1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)  
button1.setTitle("DOFlatButton", forState: UIControlState.Normal)  
self.view.addSubview(button1)  
```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DOFlatButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
use_frameworks!
target "YourAppName" do
    pod "DOFlatButton"
end
```

## Author

岡大輔, daisukeokahassou@gmail.com

## License

DOFlatButton is available under the MIT license. See the LICENSE file for more info.
