package com.jeppesen.jeppview.jtca;

import android.util.Log;
import com.jeppesen.jeppview.jtca.data.JeppViewServerInfo;

public class ActivationNativeWrapper {
    static {
        try {
            Log.i("JNI", "Trying to load libupdateservercomm.so");
            System.loadLibrary("updateservercomm");
            Log.i("JNI", "libupdateservercomm.so loaded");
        } catch (UnsatisfiedLinkError e) {
            Log.e("JNI", "WARNING: Could not load libupdateservercomm.so");
        }
    }

    public static native int applyUpdateChartsBin(String str, String str2, String str3, String str4, String str5, String str6);

    public static native String createDeactivationCode(String str);

    public static native String formatSerialNumber(String str);

    public static native String generateActivationCodeFromSiteCode(String str);

    public static native String generateSiteCode(String str, String str2);

    public static native String generateSiteCodeFromActivationCode(String str);

    public static native String getCoverageCodes(String str);

    public static native JeppViewServerInfo getJeppViewServerInfo(String str, int i, String str2, String str3, String str4, int i2);

    public static native String getTermChartDownload(String str);

    public static native String resumeTermChartDownload(String str, String str2, String str3, int i, String str4);

    public static native int testConnectToHost(String str, int i);
}
