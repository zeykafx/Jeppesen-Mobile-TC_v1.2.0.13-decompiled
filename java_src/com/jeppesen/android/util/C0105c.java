package com.jeppesen.android.util;

import android.util.Log;
import java.util.Hashtable;

/* renamed from: com.jeppesen.android.util.c */
public class C0105c {

    /* renamed from: a */
    public static final String f446a = "Ref";

    /* renamed from: b */
    public static final String f447b = "SID";

    /* renamed from: c */
    public static final String f448c = "STAR";

    /* renamed from: d */
    public static final String f449d = "Appr";

    /* renamed from: e */
    public static final String f450e = "Taxi";

    /* renamed from: f */
    public static final String f451f = "CO";

    /* renamed from: g */
    private static final String f452g = C0105c.class.getSimpleName();

    /* renamed from: h */
    private static Hashtable f453h = new Hashtable();

    static {
        f453h.put("AD", f446a);
        f453h.put("TG", f446a);
        f453h.put("N", f446a);
        f453h.put("ST", f446a);
        f453h.put("TC", f446a);
        f453h.put("TM", f446a);
        f453h.put("MG", f446a);
        f453h.put("PC", f446a);
        f453h.put("RE", f446a);
        f453h.put("RV", f446a);
        f453h.put("CN", f446a);
        f453h.put("NN", f446a);
        f453h.put("AM", f446a);
        f453h.put("AT", f446a);
        f453h.put("BL", f446a);
        f453h.put("BS", f446a);
        f453h.put("CL", f446a);
        f453h.put("CR", f446a);
        f453h.put("DU", f446a);
        f453h.put("EM", f446a);
        f453h.put("EP", f446a);
        f453h.put("ER", f446a);
        f453h.put("IN", f446a);
        f453h.put("LR", f446a);
        f453h.put("MC", f446a);
        f453h.put("MT", f446a);
        f453h.put("NA", f446a);
        f453h.put("RA", f446a);
        f453h.put("RG", f446a);
        f453h.put("RL", f446a);
        f453h.put("RR", f446a);
        f453h.put("RT", f446a);
        f453h.put("TP", f446a);
        f453h.put("AF", f446a);
        f453h.put("AQ", f446a);
        f453h.put("A", f446a);
        f453h.put("B", f446a);
        f453h.put("C", f446a);
        f453h.put("F", f446a);
        f453h.put("HH", f446a);
        f453h.put("HL", f446a);
        f453h.put("L", f446a);
        f453h.put("6A", f446a);
        f453h.put("6B", f446a);
        f453h.put("6L", f446a);
        f453h.put("6T", f446a);
        f453h.put("6W", f446a);
        f453h.put("6C", f446a);
        f453h.put("6D", f446a);
        f453h.put("6G", f446a);
        f453h.put("6H", f446a);
        f453h.put("6J", f446a);
        f453h.put("6K", f446a);
        f453h.put("6M", f446a);
        f453h.put("6N", f446a);
        f453h.put("6P", f446a);
        f453h.put("6Q", f446a);
        f453h.put("6R", f446a);
        f453h.put("6S", f446a);
        f453h.put("6U", f446a);
        f453h.put("6V", f446a);
        f453h.put("6X", f446a);
        f453h.put("6Y", f446a);
        f453h.put("60", f446a);
        f453h.put("61", f446a);
        f453h.put("62", f446a);
        f453h.put("63", f446a);
        f453h.put("64", f446a);
        f453h.put("65", f446a);
        f453h.put("66", f446a);
        f453h.put("67", f446a);
        f453h.put("68", f446a);
        f453h.put("69", f446a);
        f453h.put("7A", f446a);
        f453h.put("7E", f446a);
        f453h.put("WR", f446a);
        f453h.put("X", f446a);
        f453h.put("Y", f446a);
        f453h.put("01", f449d);
        f453h.put("02", f449d);
        f453h.put("03", f449d);
        f453h.put("04", f449d);
        f453h.put("05", f449d);
        f453h.put("06", f449d);
        f453h.put("07", f449d);
        f453h.put("08", f449d);
        f453h.put("09", f449d);
        f453h.put("11", f449d);
        f453h.put("15", f449d);
        f453h.put("1A", f449d);
        f453h.put("1C", f449d);
        f453h.put("1D", f449d);
        f453h.put("1E", f449d);
        f453h.put("1F", f449d);
        f453h.put("1G", f449d);
        f453h.put("1H", f449d);
        f453h.put("1J", f449d);
        f453h.put("1K", f449d);
        f453h.put("1L", f449d);
        f453h.put("1M", f449d);
        f453h.put("1N", f449d);
        f453h.put("1P", f449d);
        f453h.put("21", f449d);
        f453h.put("22", f449d);
        f453h.put("23", f449d);
        f453h.put("24", f449d);
        f453h.put("25", f449d);
        f453h.put("26", f449d);
        f453h.put("27", f449d);
        f453h.put("28", f449d);
        f453h.put("29", f449d);
        f453h.put("2A", f449d);
        f453h.put("2B", f449d);
        f453h.put("2C", f449d);
        f453h.put("2D", f449d);
        f453h.put("2E", f449d);
        f453h.put("2F", f449d);
        f453h.put("2G", f449d);
        f453h.put("2H", f449d);
        f453h.put("2J", f449d);
        f453h.put("2K", f449d);
        f453h.put("2N", f449d);
        f453h.put("VF", f449d);
        f453h.put("RP", f449d);
        f453h.put("RS", f449d);
        f453h.put("AP", f450e);
        f453h.put("P", f450e);
        f453h.put("AA", f450e);
        f453h.put("R", f450e);
        f453h.put("S", f450e);
        f453h.put("J", f448c);
        f453h.put("J2", f448c);
        f453h.put("JG", f448c);
        f453h.put("JH", f448c);
        f453h.put("JP", f448c);
        f453h.put("G", f447b);
        f453h.put("G2", f447b);
        f453h.put("GG", f447b);
        f453h.put("GH", f447b);
        f453h.put("GP", f447b);
        f453h.put("GR", f447b);
        f453h.put("TT", f451f);
        f453h.put("EO", f451f);
        f453h.put("OP", f451f);
    }

    /* renamed from: a */
    public static String m381a(String str) {
        String str2 = (String) f453h.get(str);
        if (str2 != null) {
            return str2;
        }
        Log.w(f452g, "Unknown chart type: " + str);
        return f446a;
    }
}
