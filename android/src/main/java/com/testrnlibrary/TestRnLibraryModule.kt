package com.testrnlibrary

import com.example.mylibrary.Hello
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.module.annotations.ReactModule

@ReactModule(name = TestRnLibraryModule.NAME)
class TestRnLibraryModule(reactContext: ReactApplicationContext) :
        NativeTestRnLibrarySpec(reactContext) {

  override fun getName(): String {
    return NAME
  }

  // Example method
  // See https://reactnative.dev/docs/native-modules-android
  override fun multiply(a: Double, b: Double): Double {
    return a * b
  }

  override fun sayHello(): String {
    return "Hello from Native Android Module! " + Hello().sayHello()
  }

  companion object {
    const val NAME = "TestRnLibrary"
  }
}
