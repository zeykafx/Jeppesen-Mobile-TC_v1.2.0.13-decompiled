package com.jeppesen.android.util;

import android.content.Context;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.JITHandler;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.Chart;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.jeppesen.android.util.i */
public class C0111i {

    /* renamed from: a */
    private static ArrayList f465a = new ArrayList();

    /* renamed from: b */
    private static ArrayList allFavCharts = new ArrayList();

    /* renamed from: c */
    private static final String f467c = C0115m.class.getSimpleName();

    /* renamed from: d */
    private static final String f468d = ",";

    /* renamed from: e */
    private static final String f469e = "/";

    /* renamed from: a */
    public static int m411a(Chart chart) {
        return m422d(chart.mo469a()).indexOf(chart);
    }

    /* renamed from: a */
    public static String m412a(String str) {
        if (str != null) {
            String[] split = str.split(f469e);
            if (split.length == 2) {
                return split[0];
            }
        }
        return "";
    }

    /* renamed from: a */
    public static String m413a(String str, String str2) {
        return str + f469e + str2;
    }

    /* renamed from: a */
    public static List m414a() {
        ArrayList arrayList = new ArrayList();
        List<Airport> b = JITHandler.m533b();
        Iterator it = f465a.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null) {
                for (Airport airport : b) {
                    if (airport.mo451a().equals(str)) {
                        arrayList.add(airport);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m415a(Context context) {
        int i = 0;
        if (!f465a.isEmpty()) {
            String str = "";
            Iterator it = f465a.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (i2 > 0) {
                    str = str + f468d;
                }
                str = str + str2;
                i2++;
            }
            C0115m.m449a(context.getString(R.string.favoriteAirports), str, context);
        }
        if (!allFavCharts.isEmpty()) {
            String str3 = "";
            Iterator it2 = allFavCharts.iterator();
            while (it2.hasNext()) {
                String str4 = (String) it2.next();
                if (i > 0) {
                    str3 = str3 + f468d;
                }
                str3 = str3 + str4;
                i++;
            }
            C0115m.m449a(context.getString(R.string.favoriteCharts), str3, context);
        }
    }

    /* renamed from: b */
    public static int m416b(Chart chart) {
        return m419c(chart.mo469a()).indexOf(chart);
    }

    /* renamed from: b */
    public static String m417b(String str) {
        if (str != null) {
            String[] split = str.split(f469e);
            if (split.length == 2) {
                return split[1];
            }
        }
        return "";
    }

    /* renamed from: b */
    public static void m418b(Context context) {
        f465a.clear();
        allFavCharts.clear();
        String a = C0115m.m444a(context.getString(R.string.favoriteAirports), context);
        if (!a.equals("")) {
            String[] split = a.split(f468d);
            for (String str : split) {
                f465a.add(str);
            }
        }
        String a2 = C0115m.m444a(context.getString(R.string.favoriteCharts), context);
        if (!a2.equals("")) {
            for (String str2 : a2.split(f468d)) {
                allFavCharts.add(str2);
            }
        }
    }

    /* renamed from: c */
    public static List m419c(String str) {
        ArrayList arrayList = new ArrayList();
        if (!str.equals("")) {
            for (Chart chart : JITHandler.m535c(str)) {
                if (chart != null) {
                    if (allFavCharts.contains(m413a(chart.mo469a(), chart.mo474c()))) {
                        arrayList.add(chart);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static void m420c(Context context) {
        f465a.clear();
        C0115m.m449a(context.getString(R.string.favoriteAirports), "", context);
    }

    /* renamed from: c */
    public static boolean containsFavChart(Chart chart) {
        if (chart == null) {
            return false;
        }
        return allFavCharts.contains(m413a(chart.mo469a(), chart.mo474c()));
    }

    /* renamed from: d */
    public static List m422d(String str) {
        return new ArrayList(JITHandler.m535c(str));
    }

    /* renamed from: d */
    public static void m423d(Context context) {
        allFavCharts.clear();
        C0115m.m449a(context.getString(R.string.favoriteCharts), "", context);
    }

    /* renamed from: d */
    public static void addFavChart(Chart chart) {
        if (chart != null) {
            String a = m413a(chart.mo469a(), chart.mo474c());
            if (!allFavCharts.contains(a)) {
                allFavCharts.add(a);
            }
            m428f(chart.mo469a());
        }
    }

    /* renamed from: e */
    public static void m425e(Context context) {
        m420c(context);
        m423d(context);
    }

    /* renamed from: e */
    public static void removeFavChart(Chart chart) {
        if (chart != null) {
            allFavCharts.remove(m413a(chart.mo469a(), chart.mo474c()));
        }
    }

    /* renamed from: e */
    public static boolean m427e(String str) {
        if (str != null) {
            return f465a.contains(str);
        }
        return false;
    }

    /* renamed from: f */
    public static void m428f(String str) {
        if (str != null && !f465a.contains(str)) {
            f465a.add(0, str);
        }
    }

    /* renamed from: g */
    public static void m429g(String str) {
        if (str != null) {
            f465a.remove(str);
            ArrayList arrayList = new ArrayList();
            Iterator it = allFavCharts.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.contains(str)) {
                    arrayList.add(str2);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                allFavCharts.remove((String) it2.next());
            }
        }
    }
}
