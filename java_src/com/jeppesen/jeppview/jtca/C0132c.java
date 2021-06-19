package com.jeppesen.jeppview.jtca;

import android.content.Context;
import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.util.C0116n;
import com.jeppesen.android.util.JeppAndroidApp;
import java.io.File;

/* renamed from: com.jeppesen.jeppview.jtca.c */
public class C0132c implements AbstractC0130a {

    /* renamed from: y */
    private static final String f599y = C0132c.class.getSimpleName();

    /* renamed from: z */
    private static String f600z;

    /* renamed from: a */
    public static void m543a(Context context, String str) {
        f600z = str;
        if (m544a() || C0002a.m7b()) {
            Log.d(f599y, "JIT files are already in place");
        } else {
            Log.d(f599y, "Copying in demo JIT files");
            C0116n.m459a(AbstractC0130a.f570b, f600z);
        }
        Log.d(f599y, "Done");
    }

    /* renamed from: a */
    private static boolean m544a() {
        return new File(f600z + File.separatorChar + AbstractC0130a.f585q).exists();
    }

    /* renamed from: a */
    public static boolean m545a(String str) {
        File file = new File(str + File.separatorChar + "charts.bin");
        File file2 = new File(str + File.separatorChar + "vfrcharts.bin");
        if (JeppAndroidApp.f436a) {
            Log.d(f599y, "charts " + file.length());
            Log.d(f599y, "charts " + file2.length());
        }
        if (!file.exists() || file.length() == 104165) {
            if (!file2.exists() || file2.length() == 37201) {
                return true;
            }
            if (!JeppAndroidApp.f436a) {
                return false;
            }
            Log.d(f599y, "incorrect demo");
            return false;
        } else if (!JeppAndroidApp.f436a) {
            return false;
        } else {
            Log.d(f599y, "incorrect demo");
            return false;
        }
    }
}
