package com.jeppesen.jeppview.jtca;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.util.C0103a;
import com.jeppesen.android.util.C0105c;
import com.jeppesen.android.util.C0106d;
import com.jeppesen.android.util.C0118p;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.Chart;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;

public class JITHandler {

    /* renamed from: a */
    static String f552a;

    /* renamed from: b */
    static String f553b;

    /* renamed from: c */
    private static final String f554c = JITHandler.class.getSimpleName();

    /* renamed from: d */
    private static String f555d;

    /* renamed from: e */
    private static String f556e;

    /* renamed from: f */
    private static long f557f = 0;

    /* renamed from: g */
    private static Date f558g;

    /* renamed from: h */
    private static LinkedHashMap f559h = new LinkedHashMap(30, 0.75f, true);

    /* renamed from: i */
    private static List f560i = new ArrayList();

    static {
        System.loadLibrary("jtca");
        System.loadLibrary("jithandler");
    }

    /* renamed from: a */
    public static Airport m528a(Chart chart) {
        for (Airport airport : m533b()) {
            if (airport.mo451a().equals(chart.mo469a())) {
                return airport;
            }
        }
        return null;
    }

    /* renamed from: a */
    static void m529a() {
        f556e = f555d + File.separatorChar + "unpackedtcl";
        if (!new File(f556e).exists() && !new File(f556e).mkdirs()) {
            Log.e(f554c, "Unable to create the directory for unpacking TCLs: " + f556e);
        }
    }

    /* renamed from: a */
    public static void m530a(String str) {
        Log.d(f554c, "init()");
        f555d = str;
        f552a = f555d + File.separatorChar + AbstractC0130a.f585q;
        f553b = f555d + File.separatorChar + AbstractC0130a.f586r;
        m529a();
    }

    /* renamed from: a */
    private static void m531a(List list) {
        String str;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Chart chart = (Chart) it.next();
                chart.mo481f(C0105c.m381a(chart.mo476d()));
            }
            Collections.sort(list, C0103a.f443a);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Chart chart2 = (Chart) it2.next();
                String g = chart2.mo482g();
                boolean d = m538d(chart2.mo484h());
                chart2.mo471a(d);
                if (g.equals("A") && d) {
                    chart2.mo471a(false);
                }
                if (!g.equals("D") || !d) {
                    str = g;
                } else {
                    chart2.mo483g("A");
                    str = chart2.mo482g();
                }
                if (str.equals("D")) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: b */
    public static String m532b(Chart chart) {
        if (!MobileTC.m82f() || !MobileTC.m81e()) {
            String str = f556e + File.separatorChar + chart.mo478e() + ".tcl";
            if (new File(str).exists()) {
            }
            m529a();
            boolean extractTcl = extractTcl(f555d + File.separatorChar + "charts.bin", chart.mo478e() + ".tcl", str, chart.mo486i());
            if (!extractTcl) {
                extractTcl = extractTcl(f555d + File.separatorChar + "vfrcharts.bin", chart.mo478e() + ".tcl", str, chart.mo486i());
            }
            if (extractTcl) {
                return str;
            }
            Log.e(f554c, str + " was not found!");
            return null;
        }
        throw new C0106d();
    }

    /* renamed from: b */
    public static List m533b() {
        Airport[] airportArr = null;
        if (m536c()) {
            f557f = m540f();
            m539e();
            m537d();
            Airport[] airports = C0118p.m468a(f552a) ? getAirports(f552a, true) : null;
            if (C0118p.m468a(f553b)) {
                airportArr = getAirports(f553b, false);
            }
            TreeMap treeMap = new TreeMap();
            if (airportArr != null) {
                for (int i = 0; i < airportArr.length; i++) {
                    treeMap.put(airportArr[i].mo451a(), airportArr[i]);
                }
            }
            if (airports != null) {
                for (int i2 = 0; i2 < airports.length; i2++) {
                    treeMap.put(airports[i2].mo451a(), airports[i2]);
                }
            }
            f560i.addAll(treeMap.values());
        }
        return f560i;
    }

    /* renamed from: b */
    public static boolean m534b(String str) {
        Date date = new Date();
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        Date time = instance.getTime();
        if (f558g == null || f558g.compareTo(time) != 0) {
            f558g = time;
            f559h.clear();
        }
        return !f559h.containsKey(str);
    }

    /* renamed from: c */
    public static List m535c(String str) {
        if (m534b(str)) {
            String str2 = f555d + File.separatorChar + "charts.dbf";
            List list = null;
            if (C0118p.m468a(str2)) {
                list = getChartsByIcao(str2, str, true);
            }
            if (list == null) {
                list = new ArrayList();
            }
            String str3 = f555d + File.separatorChar + "vfrchrts.dbf";
            if (C0118p.m468a(str3)) {
                Collection chartsByIcao = getChartsByIcao(str3, str, false);
                if (chartsByIcao == null) {
                    chartsByIcao = new ArrayList();
                }
                list.addAll(chartsByIcao);
            }
            if (list.size() > 0) {
                m531a(list);
                f559h.put(str, list);
                if (f559h.size() > 20) {
                    Iterator it = f559h.keySet().iterator();
                    it.remove();
                    Log.d(f554c, "Removing " + ((String) it.next()) + " from the charts cache");
                }
            }
        }
        return f559h.get(str) == null ? new ArrayList() : Collections.unmodifiableList((List) f559h.get(str));
    }

    /* renamed from: c */
    public static boolean m536c() {
        long f = m540f();
        return f560i.isEmpty() || f == 0 || f557f < f;
    }

    /* renamed from: d */
    public static void m537d() {
        f559h.clear();
    }

    /* renamed from: d */
    private static boolean m538d(String str) {
        if (str == null || str.length() < 8) {
            return false;
        }
        try {
            return Calendar.getInstance().getTime().before(new SimpleDateFormat("yyyyMMdd", Locale.US).parse(str));
        } catch (ParseException e) {
            Log.e(f554c, "Error parsing chart effective date: " + str);
            return false;
        }
    }

    /* renamed from: e */
    public static void m539e() {
        f560i.clear();
    }

    private static native boolean extractTcl(String str, String str2, String str3, boolean z);

    /* renamed from: f */
    private static long m540f() {
        long j = 0;
        File file = new File(f552a);
        if (file.exists()) {
            j = file.lastModified();
        }
        File file2 = new File(f553b);
        return (!file2.exists() || file2.lastModified() <= j) ? j : file2.lastModified();
    }

    private static native Airport[] getAirports(String str, boolean z);

    private static native List getChartsByIcao(String str, String str2, boolean z);
}
