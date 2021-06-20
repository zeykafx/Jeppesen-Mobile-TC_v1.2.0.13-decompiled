package com.jeppesen.android.util;

import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.jeppesen.android.util.k */
public class C0113k {

    /* renamed from: a */
    private static final String f471a = C0113k.class.getSimpleName();

    /* renamed from: a */
    // PATCHED, VERIFICATION REMOVED IN k.smali
    public static boolean m434a() {
        return m437c() || m438d() || m439e() || m440f() || m436b();
    }

    /* renamed from: a */
    private static boolean m435a(String str) {
        try {
            Iterator it = m441g().iterator();
            while (it.hasNext()) {
                if (new File(((String) it.next()) + File.separatorChar + str).exists()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        String[] strArr = {"/sbin/", "/system/bin/", "/system/xbin/", "/system/app/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/"};
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (new File(strArr[i] + str).exists()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m436b() {
        try {
            Process exec = Runtime.getRuntime().exec("su");
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            dataOutputStream.writeBytes("echo \"Do I have root?\" >/data/tmp/tempfile.txt\n");
            dataOutputStream.writeBytes("exit\n");
            dataOutputStream.flush();
            try {
                exec.waitFor();
                if (exec.exitValue() == 255) {
                    return false;
                }
                new File("/data/tmp/tempfile.txt").delete();
                return true;
            } catch (InterruptedException e) {
                return false;
            }
        } catch (IOException e2) {
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m437c() {
        File file = new File("/data/checkroot");
        try {
            file.createNewFile();
        } catch (IOException e) {
            file.delete();
        }
        if (!file.exists()) {
            return false;
        }
        file.delete();
        return true;
    }

    /* renamed from: d */
    private static boolean m438d() {
        return m435a("su");
    }

    /* renamed from: e */
    private static boolean m439e() {
        return m435a("Superuser.apk");
    }

    /* renamed from: f */
    private static boolean m440f() {
        return m435a("busybox");
    }

    /* renamed from: g */
    private static Set m441g() {
        return new HashSet(Arrays.asList(System.getenv("PATH").split(":")));
    }
}
