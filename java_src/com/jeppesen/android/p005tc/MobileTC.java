package com.jeppesen.android.p005tc;

import android.app.Activity;
import android.graphics.Bitmap;
import android.location.Location;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.Log;
import com.jeppesen.android.echarts.TCLNatives;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.util.C0108f;
import com.jeppesen.android.util.C0113k;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.JeppAndroidApp;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import com.jeppesen.jeppview.jtca.ActivationNativeWrapper;
import com.jeppesen.jeppview.jtca.C0132c;
import com.jeppesen.jeppview.jtca.JITHandler;
import com.jeppesen.jeppview.jtca.NOTAMHandler;
import java.io.File;

/* renamed from: com.jeppesen.android.tc.MobileTC */
public class MobileTC extends JeppAndroidApp {

    /* renamed from: b */
    private static final String f52b = MobileTC.class.getSimpleName();

    /* renamed from: c */
    private static TCLNatives f53c;

    /* renamed from: d */
    private static String f54d = null;

    /* renamed from: e */
    private static File f55e = null;

    /* renamed from: f */
    private static File f56f = null;

    /* renamed from: g */
    private static boolean f57g = false;

    /* renamed from: h */
    private static Location f58h;

    /* renamed from: i */
    private static boolean f59i;

    /* renamed from: j */
    private static boolean f60j;

    /* renamed from: k */
    private static boolean f61k;

    /* renamed from: l */
    private static boolean f62l;

    /* renamed from: m */
    private static Bitmap f63m;

    /* renamed from: a */
    public static TCLNatives m69a() {
        return f53c;
    }

    /* renamed from: a */
    public static void m70a(Activity activity, String str) {
        m71a(activity, str, 1);
    }

    /* renamed from: a */
    public static void m71a(Activity activity, String str, int i) {
        activity.runOnUiThread(new RunnableC0085b(activity, str, i));
    }

    /* renamed from: a */
    public static void m72a(Bitmap bitmap) {
        f63m = bitmap;
    }

    /* renamed from: a */
    public static void m73a(Location location) {
        f58h = location;
    }

    /* renamed from: a */
    public static void m74a(boolean z) {
        f59i = z;
    }

    /* renamed from: b */
    public static String m75b() {
        return f54d;
    }

    /* renamed from: b */
    public static void m76b(boolean z) {
        f60j = z;
    }

    /* renamed from: c */
    public static File m77c() {
        return f55e;
    }

    /* renamed from: c */
    public static void m78c(boolean z) {
        f61k = z;
    }

    /* renamed from: d */
    public static File m79d() {
        return f56f;
    }

    /* renamed from: d */
    public static void m80d(boolean z) {
        f62l = z;
    }

    /* renamed from: e */
    public static boolean m81e() {
        f57g = C0005a.m29a(C0005a.m31b());
        return f57g;
    }

    /* renamed from: f */
    public static boolean m82f() {
        return f57g;
    }

    /* renamed from: g */
    public static Location m83g() {
        return f58h;
    }

    /* renamed from: h */
    public static boolean m84h() {
        return f59i;
    }

    /* renamed from: i */
    public static boolean m85i() {
        return f60j;
    }

    /* renamed from: j */
    public static boolean m86j() {
        return f61k;
    }

    /* renamed from: k */
    public static Bitmap m87k() {
        return f63m;
    }

    /* renamed from: l */
    public static void m88l() {
        if (f63m != null) {
            f63m.recycle();
            f63m = null;
            System.gc();
        }
    }

    /* renamed from: n */
    public static boolean m89n() {
        return f62l;
    }

    /* renamed from: m */
    public String mo45m() {
        Log.d(f52b, "initializeApplication()");
        try {
            f53c = new TCLNatives();
            if (JeppAndroidApp.f436a) {
                f54d = getExternalFilesDir(null).getAbsolutePath();
            } else {
                f54d = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            }
            TCLNatives.setRootStoragePath(f54d);
            TCLNatives.initAssets();
            JITHandler.m530a(f54d);
            JITHandler.m533b();
            C0002a.m4a(f54d);
            C0005a.m27a(f54d);
            NOTAMHandler.m541a(f54d);
            if (C0113k.m434a()) {
                return "rooted";
            }
            if (C0002a.m7b()) {
                C0003a a = C0002a.m3a();
                String a2 = a.mo3a();
                String b = a.mo5b();
                String c = C0108f.m393c(getApplicationContext());
                if ((c == null && (c = C0115m.m444a("IATAConversionCRC", getApplicationContext())) == null) || !b.equals(ActivationNativeWrapper.generateActivationCodeFromSiteCode(ActivationNativeWrapper.generateSiteCode(a2, c)))) {
                    return "failed";
                }
                if (!C0005a.m35c(c)) {
                    Log.w(f52b, "unable to confirm data");
                    return "failed";
                }
                m81e();
            } else if (!C0132c.m545a(f54d)) {
                return "failed";
            }
            f55e = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + File.separatorChar + AbstractC0130a.f588t);
            if (!f55e.exists() && !f55e.mkdirs()) {
                Log.e(f52b, "Unable to mkdirs(), downloading WILL fail: " + f55e.getAbsolutePath());
            }
            f56f = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + File.separatorChar + AbstractC0130a.f590v);
            if (!f56f.exists() && !f56f.mkdirs()) {
                Log.e(f52b, "Unable to mkdirs(), downloading WILL fail: " + f56f.getAbsolutePath());
            }
            new AsyncTaskC0086c(this, null).execute(new Void[0]);
            new AsyncTaskC0087d(this, null).execute(m77c().getAbsolutePath());
            if (C0002a.m10c()) {
                new AsyncTaskC0088e(this, null).execute(f56f.getAbsolutePath());
            }
            PreferenceManager.setDefaultValues(getApplicationContext(), R.xml.fragmented_preferences, false);
            return "done";
        } catch (Exception e) {
            Log.e(f52b, "doInBackground() Oh No!", e);
            return "failed";
        }
    }

    @Override // com.jeppesen.android.util.JeppAndroidApp
    public void onCreate() {
        Log.d(f52b, "onCreate()");
        super.onCreate();
    }

    @Override // com.jeppesen.android.util.JeppAndroidApp
    public void onLowMemory() {
        Log.w(f52b, "onLowMemory()");
        super.onLowMemory();
    }

    @Override // com.jeppesen.android.util.JeppAndroidApp
    public void onTerminate() {
        Log.d(f52b, "onTerminate()");
        super.onTerminate();
    }
}
