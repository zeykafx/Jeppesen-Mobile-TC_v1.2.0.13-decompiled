package com.jeppesen.jeppview.jtca;

import android.util.Log;
import com.jeppesen.android.util.C0118p;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class NOTAMHandler {

    /* renamed from: a */
    private static final String f561a = NOTAMHandler.class.getSimpleName();

    /* renamed from: b */
    private static String f562b;

    /* renamed from: c */
    private static String f563c;

    /* renamed from: d */
    private static String f564d;

    /* renamed from: e */
    private static String f565e;

    /* renamed from: f */
    private static String f566f;

    /* renamed from: g */
    private static String f567g;

    /* renamed from: h */
    private static String f568h;

    static {
        System.loadLibrary("notamhandler");
    }

    /* renamed from: a */
    public static void m541a(String str) {
        Log.d(f561a, "init()");
        f562b = str;
        f563c = f562b + File.separatorChar + AbstractC0130a.f581m;
        f564d = f562b + File.separatorChar + AbstractC0130a.f582n;
        f565e = f562b + File.separatorChar + AbstractC0130a.f583o;
        f566f = f562b + File.separatorChar + AbstractC0130a.f584p;
        f567g = f562b + File.separatorChar + AbstractC0130a.f585q;
        f568h = f562b + File.separatorChar + AbstractC0130a.f586r;
    }

    /* renamed from: b */
    public static List m542b(String str) {
        List list = null;
        List notamsByIcao = (!C0118p.m468a(f563c) || !C0118p.m468a(f564d)) ? null : getNotamsByIcao(f564d, f563c, str, false, f567g);
        if (C0118p.m468a(f565e) && C0118p.m468a(f566f)) {
            list = getNotamsByIcao(f566f, f565e, str, true, f568h);
        }
        ArrayList arrayList = new ArrayList();
        if (notamsByIcao != null) {
            arrayList.addAll(notamsByIcao);
        }
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    private static native List getNotamsByIcao(String str, String str2, String str3, boolean z, String str4);
}
