package com.jeppesen.android.p004c;

import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.p003b.C0004b;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.util.C0107e;
import com.jeppesen.android.util.C0108f;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.C0118p;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import com.jeppesen.jeppview.jtca.ActivationNativeWrapper;
import com.jeppesen.jeppview.jtca.data.JeppViewServerInfo;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Properties;

/* renamed from: com.jeppesen.android.c.a */
public class C0005a {

    /* renamed from: a */
    private static final String f9a = C0005a.class.getSimpleName();

    /* renamed from: b */
    private static String f10b;

    /* renamed from: c */
    private static String f11c;

    /* renamed from: d */
    private static String f12d;

    /* renamed from: e */
    private static boolean f13e = false;

    /* renamed from: a */
    public static C0004b m23a(String[] strArr) {
        C0004b bVar = new C0004b();
        if (!f13e) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    Log.d(f9a, "Unable to connect to any update server!");
                    break;
                }
                String[] split = strArr[i].split(":");
                String str = split[0];
                int parseInt = Integer.parseInt(split[1]);
                if (ActivationNativeWrapper.testConnectToHost(str, parseInt) == 0) {
                    bVar.mo9a(str);
                    bVar.mo8a(parseInt);
                    Log.d(f9a, "Connected to server: " + str + " port: " + parseInt);
                    break;
                }
                i++;
            }
        } else {
            Log.d(f9a, "Using test update server november.jepptech.com port 1984");
            if (ActivationNativeWrapper.testConnectToHost("november.jepptech.com", 1984) == 0) {
                bVar.mo9a("november.jepptech.com");
                bVar.mo8a(1984);
                Log.d(f9a, "Connected to server: november.jepptech.com  port: 1984");
            } else {
                Log.d(f9a, "Unable to connect to november.jepptech.com port 1984!");
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public static JeppViewServerInfo m24a(String str, int i, String str2, String str3, String str4, int i2) {
        return ActivationNativeWrapper.getJeppViewServerInfo(str, i, str2, str3, str4, i2);
    }

    /* renamed from: a */
    public static String m25a(String str, String str2, String str3, int i) {
        String resumeTermChartDownload = ActivationNativeWrapper.resumeTermChartDownload(str, str2, str3, i, f10b);
        if (resumeTermChartDownload == null || resumeTermChartDownload.equals("")) {
            m47n();
        }
        return resumeTermChartDownload;
    }

    /* renamed from: a */
    public static void m26a(long j) {
        String c = C0108f.m393c(MobileTC.m377q());
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        arrayList.add("downloadzip" + j);
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            C0115m.m449a(a, C0108f.m390a(arrayList), MobileTC.m377q());
        } catch (Exception e) {
            Log.e(f9a, e.toString());
        }
    }

    /* renamed from: a */
    public static void m27a(String str) {
        Log.d(f9a, "init()");
        f10b = str;
        f11c = f10b + File.separatorChar + AbstractC0130a.f579k;
        f12d = f10b + File.separatorChar + AbstractC0130a.f580l;
    }

    /* renamed from: a */
    public static void m28a(boolean z) {
        f13e = z;
    }

    /* renamed from: a */
    public static boolean m29a(int i) {
        return i > 0 && ((int) C0107e.m384b()) > (i + 14) + 70;
    }

    /* JADX WARNING: Removed duplicated region for block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x009f A[SYNTHETIC, Splitter:B:54:0x009f] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00a4 A[SYNTHETIC, Splitter:B:57:0x00a4] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00b9 A[SYNTHETIC, Splitter:B:64:0x00b9] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00be A[SYNTHETIC, Splitter:B:67:0x00be] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00ca A[SYNTHETIC, Splitter:B:73:0x00ca] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00cf A[SYNTHETIC, Splitter:B:76:0x00cf] */
    /* renamed from: a */
    public static String[] m30a() {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        Throwable th;
        IOException e;
        String[] strArr;
        MalformedURLException e2;
        try {
            URLConnection openConnection = new URL(AbstractC0130a.f571c).openConnection();
            openConnection.setConnectTimeout(10000);
            openConnection.setReadTimeout(10000);
            inputStreamReader = new InputStreamReader(openConnection.getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
            } catch (MalformedURLException e3) {
                bufferedReader = null;
                e2 = e3;
                strArr = null;
                try {
                    Log.e(f9a, "Malformed URL for jepptech", e2);
                    if (bufferedReader != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                    throw th;
                }
            } catch (IOException e4) {
                bufferedReader = null;
                e = e4;
                strArr = null;
                Log.e(f9a, "Error trying to get URL connection", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                throw th;
            }
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null || readLine.length() == 0) {
                    Log.e(f9a, "No update server list found");
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e6) {
                        }
                    }
                    return null;
                } else if (readLine.contains("<")) {
                    Log.e(f9a, "Response contained HTML");
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e7) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e8) {
                        }
                    }
                    return null;
                } else {
                    strArr = readLine.split("\\|");
                    if (strArr != null) {
                        try {
                            if (strArr.length != 0) {
                                Log.d(f9a, "retrieved update server list");
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e9) {
                                    }
                                }
                                if (inputStreamReader == null) {
                                    return strArr;
                                }
                                try {
                                    inputStreamReader.close();
                                    return strArr;
                                } catch (IOException e10) {
                                    return strArr;
                                }
                            }
                        } catch (MalformedURLException e11) {
                            e2 = e11;
                            Log.e(f9a, "Malformed URL for jepptech", e2);
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                        } catch (IOException e12) {
                            e = e12;
                            Log.e(f9a, "Error trying to get URL connection", e);
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                        }
                    }
                    Log.e(f9a, "Error parsing server list");
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e13) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e14) {
                        }
                    }
                    return null;
                }
            } catch (MalformedURLException e15) {
                strArr = null;
                e2 = e15;
                Log.e(f9a, "Malformed URL for jepptech", e2);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
            } catch (IOException e16) {
                strArr = null;
                e = e16;
                Log.e(f9a, "Error trying to get URL connection", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
            }
        } catch (MalformedURLException e17) {
            inputStreamReader = null;
            bufferedReader = null;
            strArr = null;
            e2 = e17;
            Log.e(f9a, "Malformed URL for jepptech", e2);
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e18) {
                }
            }
            if (inputStreamReader != null) {
                return strArr;
            }
            try {
                inputStreamReader.close();
                return strArr;
            } catch (IOException e19) {
                return strArr;
            }
        } catch (IOException e20) {
            inputStreamReader = null;
            bufferedReader = null;
            strArr = null;
            e = e20;
            Log.e(f9a, "Error trying to get URL connection", e);
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e21) {
                }
            }
            if (inputStreamReader != null) {
                return strArr;
            }
            try {
                inputStreamReader.close();
                return strArr;
            } catch (IOException e22) {
                return strArr;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
            bufferedReader = null;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e23) {
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e24) {
                }
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static int m31b() {
        File file = new File(f10b + File.separatorChar + "charts.ini");
        if (!file.exists()) {
            return -2;
        }
        Properties properties = new Properties();
        try {
            properties.load(new FileReader(file));
            String property = properties.getProperty(AbstractC0130a.f576h);
            if (property == null || property.length() == 0) {
                return -3;
            }
            try {
                return (int) Float.parseFloat(property);
            } catch (NumberFormatException e) {
                return -4;
            }
        } catch (FileNotFoundException e2) {
            Log.e(f9a, "Unable to load charts.ini file");
            return -1;
        } catch (IOException e3) {
            Log.e(f9a, "Unable to load charts.ini file");
            return -1;
        }
    }

    /* renamed from: b */
    public static int m32b(String str) {
        if (!m37d(str)) {
            Log.w(f9a, "unable to confirm download");
            return -1;
        }
        C0118p.m474c(f12d, "jeppesen.tfl");
        C0118p.m474c(f12d, "jeppesen.tfs");
        C0118p.m474c(f12d, "lssdef.tcl");
        C0118p.m474c(f12d, AbstractC0130a.f585q);
        C0118p.m474c(f12d, "charts.dbf");
        C0118p.m474c(f12d, "chrtlink.dbf");
        C0118p.m474c(f12d, "ctypes.dbf");
        C0118p.m474c(f12d, "crcfiles.txt");
        C0118p.m474c(f12d, AbstractC0130a.f582n);
        C0118p.m474c(f12d, AbstractC0130a.f581m);
        C0118p.m474c(f12d, "charts.ini");
        C0118p.m474c(f12d, "charts.bin");
        C0118p.m474c(f12d, "state.dbf");
        C0118p.m474c(f12d, AbstractC0130a.f586r);
        C0118p.m474c(f12d, "vfrchrts.dbf");
        C0118p.m474c(f12d, "vfrchrts.bin");
        C0118p.m474c(f12d, AbstractC0130a.f584p);
        C0118p.m474c(f12d, AbstractC0130a.f583o);
        ArrayList arrayList = new ArrayList();
        arrayList.add(AbstractC0130a.f581m);
        arrayList.add("jeppesen.tfl");
        arrayList.add("jeppesen.tls");
        arrayList.add("lssdef.tcl");
        arrayList.add(AbstractC0130a.f585q);
        arrayList.add("charts.dbf");
        arrayList.add("chrtlink.dbf");
        arrayList.add("ctypes.dbf");
        arrayList.add("crcfiles.txt");
        arrayList.add(AbstractC0130a.f582n);
        arrayList.add("charts.ini");
        arrayList.add("state.dbf");
        arrayList.add("charts.bin");
        int a = C0118p.m466a(str, arrayList, f12d);
        if (a < 0) {
            Log.e(f9a, "Error unpacking file: " + str);
            return a;
        }
        C0118p.m476e(f12d, f10b);
        m46m();
        return 0;
    }

    /* renamed from: b */
    public static void m33b(int i) {
        int b = m31b();
        int c = b + ((m34c() - b) - 7); // 2459362.5 + ((2459375.5 - 2459362.5) - 7) = 6
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(f10b + File.separatorChar + "charts.ini")));
            try {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("[CHARTS]\r\n");
                stringBuffer.append("Database_Begin_Date=" + i + ".5\r\n");
                stringBuffer.append("Database_End_Date=" + c + ".5\r\n");
                stringBuffer.append("Data_Spec_Version=2.2\r\n");
                bufferedWriter.write(stringBuffer.toString());
            } finally {
                bufferedWriter.close();
            }
        } catch (IOException e) {
            Log.e(f9a, "fixChartsIni encountered a problem: " + e.getStackTrace());
        }
    }

    /* renamed from: c */
    public static int m34c() {
        File file = new File(f10b + File.separatorChar + "charts.ini");
        if (!file.exists()) {
            return -2;
        }
        Properties properties = new Properties();
        try {
            properties.load(new FileReader(file));
            String property = properties.getProperty(AbstractC0130a.f577i);
            if (property == null || property.length() == 0) {
                return -3;
            }
            try {
                return (int) Float.parseFloat(property);
            } catch (NumberFormatException e) {
                return -4;
            }
        } catch (FileNotFoundException e2) {
            Log.e(f9a, "Unable to load charts.ini file");
            return -1;
        } catch (IOException e3) {
            Log.e(f9a, "Unable to load charts.ini file");
            return -1;
        }
    }

    /* renamed from: c */
    public static boolean m35c(String str) {
        File file = new File(f10b + File.separatorChar + "charts.bin");
        File file2 = new File(f10b + File.separatorChar + "vfrcharts.bin");
        if (!file.exists() && !file2.exists()) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (file.exists()) {
            arrayList.add("chartsbin" + file.length());
        }
        if (file2.exists()) {
            arrayList.add("vfrchartsbin" + file2.length());
        }
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            return C0115m.m444a(a, MobileTC.m377q()).equals(C0108f.m390a(arrayList));
        } catch (Exception e) {
            Log.e(f9a, e.toString());
            return false;
        }
    }

    /* renamed from: d */
    public static String m36d() {
        return ActivationNativeWrapper.getCoverageCodes(f10b);
    }

    /* renamed from: d */
    private static boolean m37d(String str) {
        String c = C0108f.m393c(MobileTC.m377q());
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        arrayList.add("downloadzip" + file.length());
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            return C0108f.m390a(arrayList).equals(C0115m.m444a(a, MobileTC.m377q()));
        } catch (Exception e) {
            Log.e(f9a, e.toString());
            return false;
        }
    }

    /* renamed from: e */
    public static String m38e() {
        String termChartDownload = ActivationNativeWrapper.getTermChartDownload(f10b + File.separatorChar + AbstractC0130a.f579k);
        if (termChartDownload == null || termChartDownload.equals("")) {
            m47n();
        }
        return termChartDownload;
    }

    /* renamed from: f */
    public static int m39f() {
        boolean z;
        int i;
        if (!m48o()) {
            Log.w(f9a, "unable to confirm download");
            return -1;
        }
        int a = C0118p.m465a(f11c, "TerminalCharts/", f12d);
        if (a < 0) {
            Log.e(f9a, "Error unpacking file: " + f11c);
            return a;
        }
        if (!C0118p.m469a(f12d, AbstractC0130a.f585q)) {
            C0118p.m474c(f12d, "charts.bin");
            C0118p.m474c(f12d, "charts.dbf");
            C0118p.m474c(f12d, AbstractC0130a.f582n);
            C0118p.m474c(f12d, AbstractC0130a.f581m);
        }
        if (!C0118p.m469a(f12d, AbstractC0130a.f586r)) {
            C0118p.m474c(f12d, "vfrcharts.bin");
            C0118p.m474c(f12d, "vfrchrts.dbf");
            C0118p.m474c(f12d, AbstractC0130a.f584p);
            C0118p.m474c(f12d, AbstractC0130a.f583o);
        }
        if (C0118p.m469a(f12d, "deletecharts.bin")) {
            C0118p.m474c(f12d, "charts.bin");
            C0118p.m474c(f12d, "vfrcharts.bin");
            C0118p.m474c(f12d, "deletecharts.bin");
            z = true;
        } else {
            z = false;
        }
        if (C0118p.m469a(f12d, "deltacharts000.bin")) {
            i = ActivationNativeWrapper.applyUpdateChartsBin(z ? "" : f10b, f12d, "deltacharts000.bin", "deltatable.bin", "charts.bin", "charts.dbf");
        } else {
            i = 0;
        }
        if (i != 0) {
            Log.e(f9a, "Error merging IFR deltas");
            return i;
        }
        if (C0118p.m469a(f12d, "vfrdeltacharts000.bin")) {
            i = ActivationNativeWrapper.applyUpdateChartsBin(z ? "" : f10b, f12d, "vfrdeltacharts000.bin", "vfrdeltatable.bin", "vfrcharts.bin", "vfrchrts.dbf");
        }
        if (i != 0) {
            Log.e(f9a, "Error merging VFR deltas");
            return i;
        }
        C0118p.m475d(f12d, "delta*");
        C0118p.m475d(f12d, "vfrdelta*");
        C0118p.m474c(f10b, AbstractC0130a.f579k);
        if (i != 0) {
            return i;
        }
        C0118p.m476e(f12d, f10b);
        m46m();
        return i;
    }

    /* renamed from: g */
    public static long m40g() {
        File[] f = C0118p.m477f(f10b, "*.siz");
        if (f == null || f.length == 0) {
            return 0;
        }
        String name = f[0].getName();
        return Long.parseLong(name.substring(0, name.indexOf(".siz"))) / 1024;
    }

    /* renamed from: h */
    public static long m41h() {
        File file = new File(f11c);
        if (!file.exists()) {
            return 0;
        }
        return file.length() / 1024;
    }

    /* renamed from: i */
    public static boolean m42i() {
        File[] f = C0118p.m477f(f10b, "*.siz");
        if (f != null && f.length != 0) {
            return true;
        }
        File[] f2 = C0118p.m477f(f10b, "*.id");
        if (f2 == null || f2.length == 0) {
            return new File(f11c).exists();
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m43j() {
        boolean z = true;
        boolean a = C0118p.m468a(f11c);
        int i = a ? 1 : 0;
        boolean a2 = C0118p.m469a(f10b, "*.id");
        if (a2) {
            i++;
        }
        boolean a3 = C0118p.m469a(f10b, "*.siz");
        if (a3) {
            i++;
        }
        if (i == 3) {
            return true;
        }
        if (i == 1 && a) {
            return false;
        }
        int i2 = C0118p.m473b(f10b, "charts.ini") ? 1 : 0;
        if (C0118p.m473b(f10b, "chrtlink.dbf")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "country.dbf")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "coverags.dbf")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "crcfiles.txt")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "ctypes.dbf")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "jvcoverage.dat")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "regions.dat")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "sbscrips.dbf")) {
            i2++;
        }
        if (C0118p.m473b(f10b, "state.dbf")) {
            i2++;
        }
        int i3 = C0118p.m473b(f10b, AbstractC0130a.f585q) ? 1 : 0;
        if (C0118p.m473b(f10b, "charts.bin")) {
            i3++;
        }
        if (C0118p.m473b(f10b, "charts.dbf")) {
            i3++;
        }
        if (C0118p.m473b(f10b, AbstractC0130a.f582n)) {
            i3++;
        }
        if (C0118p.m473b(f10b, AbstractC0130a.f581m)) {
            i3++;
        }
        int i4 = C0118p.m473b(f10b, AbstractC0130a.f586r) ? 1 : 0;
        if (C0118p.m473b(f10b, "vfrcharts.bin")) {
            i4++;
        }
        if (C0118p.m473b(f10b, "vfrchrts.dbf")) {
            i4++;
        }
        if (C0118p.m473b(f10b, AbstractC0130a.f584p)) {
            i4++;
        }
        if (C0118p.m473b(f10b, AbstractC0130a.f583o)) {
            i4++;
        }
        boolean z2 = i2 != 10;
        if (i3 > 0 && i3 != 5) {
            z2 = true;
        }
        if (i4 > 0 && i4 != 5) {
            z2 = true;
        }
        if (C0118p.m473b(f10b, "table.bin")) {
            z2 = true;
        }
        if (a) {
            z2 = true;
        }
        if (a2) {
            z2 = true;
        }
        if (!a3) {
            z = z2;
        }
        if (!z) {
            return false;
        }
        C0003a a4 = C0002a.m3a();
        m44k();
        C0002a.m5a(a4.mo3a(), a4.mo5b());
        return false;
    }

    /* renamed from: k */
    public static boolean m44k() {
        return C0118p.m467a(new File(f10b));
    }

    /* renamed from: l */
    public static boolean m45l() {
        return C0118p.m468a(f11c);
    }

    /* renamed from: m */
    private static void m46m() {
        String c = C0108f.m393c(MobileTC.m377q());
        File file = new File(f10b + File.separatorChar + "charts.bin");
        File file2 = new File(f10b + File.separatorChar + "vfrcharts.bin");
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        if (file.exists()) {
            arrayList.add("chartsbin" + file.length());
        }
        if (file2.exists()) {
            arrayList.add("vfrchartsbin" + file2.length());
        }
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            C0115m.m449a(a, C0108f.m390a(arrayList), MobileTC.m377q());
        } catch (Exception e) {
            Log.e(f9a, e.toString());
        }
    }

    /* renamed from: n */
    private static void m47n() {
        String c = C0108f.m393c(MobileTC.m377q());
        File file = new File(f10b + File.separatorChar + AbstractC0130a.f579k);
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        arrayList.add("downloadzip" + file.length());
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            C0115m.m449a(a, C0108f.m390a(arrayList), MobileTC.m377q());
        } catch (Exception e) {
            Log.e(f9a, e.toString());
        }
    }

    /* renamed from: o */
    private static boolean m48o() {
        String c = C0108f.m393c(MobileTC.m377q());
        File file = new File(f10b + File.separatorChar + AbstractC0130a.f579k);
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        arrayList.add("downloadzip" + file.length());
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            return C0108f.m390a(arrayList).equals(C0115m.m444a(a, MobileTC.m377q()));
        } catch (Exception e) {
            Log.e(f9a, e.toString());
            return false;
        }
    }
}
