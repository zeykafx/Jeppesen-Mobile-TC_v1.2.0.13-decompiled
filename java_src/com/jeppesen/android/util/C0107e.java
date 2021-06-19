package com.jeppesen.android.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

/* renamed from: com.jeppesen.android.util.e */
public class C0107e {

    /* renamed from: a */
    private static final String f455a = C0107e.class.getSimpleName();

    /* renamed from: a */
    public static String m382a() {
        return DateFormat.getDateInstance(2).format(new GregorianCalendar().getTime());
    }

    /* renamed from: a */
    public static String m383a(double d) {
        if (d == 0.0d) {
            return null;
        }
        int[] d2 = m387d(2.0d + d);
        return DateFormat.getDateInstance(2).format(new GregorianCalendar(d2[0], d2[1] - 1, d2[2]).getTime());
    }

    /* renamed from: b */
    public static double m384b() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long j = (long) (gregorianCalendar.get(2) + 1);
        double d = (double) gregorianCalendar.get(5);
        long j2 = (long) gregorianCalendar.get(1);
        if (j <= 2) {
            j2--;
            j += 12;
        }
        return ((double) (((long) (((double) j2) * 365.25d)) + ((long) (((double) (j + 1)) * 30.6001d)))) + d + 1720994.5d + ((double) ((2 - (j2 / 100)) + (j2 / 400)));
    }

    /* renamed from: b */
    public static String m385b(double d) {
        if (d == 0.0d) {
            return "Demo charts, not for navigation usage.";
        }
        int[] d2 = m387d(d);
        return DateFormat.getDateInstance(2).format(new GregorianCalendar(d2[0], d2[1] - 1, d2[2]).getTime());
    }

    /* renamed from: c */
    public static String m386c(double d) {
        boolean z = false;
        int[] iArr = {0, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
        if (d == 0.0d) {
            return "Demo charts, not for navigation usage.";
        }
        int[] d2 = m387d(d);
        int i = d2[0];
        int i2 = d2[1];
        int i3 = (iArr[i2] + d2[2]) - 1;
        if (i % 400 == 0 || (i % 4 == 0 && i % 100 != 0)) {
            z = true;
        }
        if (z && i2 > 2) {
            i3++;
        }
        return ((i3 / 14) + 1) + "-" + i;
    }

    /* renamed from: d */
    public static int[] m387d(double d) {
        double d2 = d + 0.5d;
        double floor = Math.floor(d2);
        double d3 = d2 - floor;
        if (floor >= 2299161.0d) {
            double floor2 = Math.floor((floor - 1867216.25d) / 36524.25d);
            floor = ((floor + 1.0d) + floor2) - Math.floor(floor2 / 4.0d);
        }
        double d4 = floor + 1524.0d;
        double floor3 = Math.floor((d4 - 122.1d) / 365.25d);
        double floor4 = Math.floor(365.25d * floor3);
        double floor5 = Math.floor((d4 - floor4) / 30.6001d);
        int floor6 = (int) (((d4 - floor4) - Math.floor(30.6001d * floor5)) + d3);
        int i = (int) (floor5 < 14.0d ? floor5 - 1.0d : floor5 - 13.0d);
        return new int[]{(int) (i > 2 ? floor3 - 4716.0d : floor3 - 4715.0d), i, floor6};
    }

    /* renamed from: e */
    public static String m388e(double d) {
        int[] d2 = m387d(d);
        int i = d2[0];
        int i2 = d2[1];
        int i3 = d2[2];
        if (i2 > 0) {
            i2--;
        }
        return new SimpleDateFormat("MMM d, yyyy").format((Object) new GregorianCalendar(i, i2, i3).getTime());
    }
}
