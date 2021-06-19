package com.jeppesen.android.util;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.List;

/* renamed from: com.jeppesen.android.util.a */
public class C0103a {

    /* renamed from: a */
    public static final Comparator f443a = new C0104b();

    /* renamed from: b */
    private static final List f444b = Arrays.asList(C0105c.f446a, C0105c.f448c, C0105c.f447b, C0105c.f450e, C0105c.f449d, C0105c.f451f);

    /* renamed from: c */
    private static final Hashtable f445c = new Hashtable();

    static {
        f445c.put(C0105c.f446a, "Reference");
        f445c.put(C0105c.f448c, "Standard Arrival");
        f445c.put(C0105c.f447b, "Standard Instrument Departure");
        f445c.put(C0105c.f450e, C0105c.f450e);
        f445c.put(C0105c.f449d, "Approach");
        f445c.put(C0105c.f451f, "Company");
    }

    /* renamed from: a */
    public static String m378a(String str) {
        return (String) f445c.get(str);
    }
}
