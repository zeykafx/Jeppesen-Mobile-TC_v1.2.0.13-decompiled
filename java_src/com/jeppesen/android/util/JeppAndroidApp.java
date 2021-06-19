package com.jeppesen.android.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Debug;
import android.util.Log;

public abstract class JeppAndroidApp extends Application {

    /* renamed from: a */
    public static boolean f436a = false;

    /* renamed from: b */
    private static final String f437b = JeppAndroidApp.class.getSimpleName();

    /* renamed from: c */
    private static JeppAndroidApp f438c = null;

    /* renamed from: d */
    private static Context f439d = null;

    /* renamed from: e */
    private static boolean f440e = false;

    public JeppAndroidApp() {
        f438c = this;
    }

    /* renamed from: a */
    public static void m374a(String str) {
        if (f436a) {
            Log.i(f437b, str + " NativeHeapSize: " + Debug.getNativeHeapSize());
            Log.i(f437b, str + " HeapAllocatedSize: " + Debug.getNativeHeapAllocatedSize());
            Log.i(f437b, str + " NativeHeapFreeSize: " + Debug.getNativeHeapFreeSize());
        }
    }

    /* renamed from: o */
    public static boolean m375o() {
        return f440e;
    }

    /* renamed from: p */
    public static JeppAndroidApp m376p() {
        return f438c;
    }

    /* renamed from: q */
    public static Context m377q() {
        return f439d;
    }

    public void onCreate() {
        boolean z = false;
        super.onCreate();
        try {
            if ((getPackageManager().getPackageInfo(getPackageName(), 0).applicationInfo.flags & 2) != 0) {
                z = true;
            }
            f436a = z;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f437b, "Unable to get package info: ", e);
        }
        if (f436a) {
            Log.i(f437b, "onCreate()");
        }
        try {
            f439d = getApplicationContext();
        } catch (Exception e2) {
            Log.e(f437b, "Oh No!", e2);
        }
        if (f436a) {
            m374a("onCreate()");
        }
        if (f436a) {
        }
        f440e = true;
    }

    public void onLowMemory() {
        if (f436a) {
            Log.w(f437b, "onLowMemory()");
            m374a("onLowMemory()");
        }
    }

    public void onTerminate() {
        if (f436a) {
            Log.i(f437b, "onTerminate()");
        }
    }
}
