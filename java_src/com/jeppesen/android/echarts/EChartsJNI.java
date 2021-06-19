package com.jeppesen.android.echarts;

import android.graphics.Canvas;

public class EChartsJNI {
    static {
        System.loadLibrary("mc3-jni");
    }

    public static native void tclClose(int i);

    public static native void tclDisplay(int i, Canvas canvas, float f, float f2, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    public static native void tclGetChartInfo(int i, EChartsInfo eChartsInfo);

    public static native void tclGetVersion(int[] iArr);

    public static native void tclLibClose();

    public static native void tclLibInit(String str, String str2, String str3);

    public static native int tclOpen(String str, int i, String str2);
}
