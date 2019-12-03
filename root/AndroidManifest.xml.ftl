<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.CAMERA" />

    <uses-feature android:name="android.hardware.camera" />
    <uses-feature android:name="android.hardware.camera.autofocus" />
    <application>
        <activity
            android:name="${packageName}.${mainActivityClass}"
            android:screenOrientation="landscape"
            android:windowSoftInputMode="stateAlwaysHidden|adjustResize" />

    </application>

</manifest>
