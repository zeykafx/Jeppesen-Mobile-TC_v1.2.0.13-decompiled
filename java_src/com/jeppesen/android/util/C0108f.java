package com.jeppesen.android.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.jeppesen.android.util.f */
public class C0108f {

    /* renamed from: a */
    private static final String f456a = C0108f.class.getSimpleName();

    /* renamed from: a */
    public static String m389a(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    /* renamed from: a */
    public static String m390a(List list) {
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            instance.update(((String) it.next()).getBytes("ISO-8859-1"));
        }
        return Base64.encodeToString(instance.digest(), 2);
    }

    /* renamed from: a */
    static void m391a(Window window, int i) {
        if (i > 100) {
            if (JeppAndroidApp.f436a) {
                Log.e(f456a, "setBrightness() brightness value (" + i + ")  is out of range, resetting to default");
            }
            i = -1;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.screenBrightness = (float) (i / 100);
        window.setAttributes(attributes);
    }

    /* renamed from: b */
    public static String m392b(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    /* renamed from: c */
    public static String m393c(Context context) {
        String a = m389a(context);
        if ((a == null || a.length() <= 0) && ((a = m392b(context)) == null || a.length() <= 0)) {
            a = null;
        }
        if (a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(a);
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null) {
            arrayList.add(string);
        }
        String str = Build.BOARD;
        if (str != null) {
            arrayList.add(str);
        }
        String str2 = Build.MANUFACTURER;
        if (str2 != null) {
            arrayList.add(str2);
        }
        String str3 = Build.SERIAL;
        if (str3 != null) {
            arrayList.add(str3);
        }
        try {
            return m390a(arrayList);
        } catch (NoSuchAlgorithmException e) {
            Log.e(f456a, e.toString());
            return null;
        } catch (UnsupportedEncodingException e2) {
            Log.e(f456a, e2.toString());
            return null;
        }
    }
}
