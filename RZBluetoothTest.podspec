# -*- coding: utf-8 -*-
Pod::Spec.new do |s|
  s.name         = "RZBluetoothTest"
  s.version      = "1.2.1"
  s.summary      = "A Core Bluetooth helper library to simplify the development and testing of Core Bluetooth applications."

  s.description  = <<-DESC
RZBluetooth is a Core Bluetooth helper with 3 primary goals:

- Simplify the delegate callbacks and encourage best practices
- Provide a pattern for Profile level APIs, with support for public profiles
- Simplify and encourage testing - including unit tests, automated integration tests, and manual tests.
                   DESC

  s.homepage     = "http://github.com/Raizlabs/RZBluetooth"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brian King" => "brianaking@gmail.com" }
  s.osx.deployment_target = "10.10"
  s.ios.deployment_target = "8.0"
  s.watchos.deployment_target = "4.0"
  s.source       = { :git => "https://github.com/Raizlabs/RZBluetooth.git", :tag => s.version }
  s.requires_arc = true

  s.default_subspec = "Test"

  s.subspec "Test" do |test|
    test.frameworks = "XCTest"
    test.source_files = "RZBluetoothTests/RZBTestDefines.h",
                        "RZBluetoothTests/RZBSimulatedTestCase.{h,m}",
                        "RZBluetoothTests/Helpers/NSRunLoop+RZBWaitFor.{h,m}",
                        "RZBluetooth/**/*.{h,m}",
                        "RZMockBluetooth/**/*.{h,m}"
    test.public_header_files = "RZMockBluetooth/**/*.h", "RZBluetooth/**/*.h", "RZBluetoothTests/RZBSimulatedTestCase.h", "RZBluetoothTests/RZBTestDefines.h"
    test.private_header_files = "RZMockBluetooth/**/*+Private.h", "RZBluetooth/**/*+Private.h", "RZBluetooth/Command/*.h", "RZBluetooth/RZBCentralManager+CommandHelper.h"
  end
end
