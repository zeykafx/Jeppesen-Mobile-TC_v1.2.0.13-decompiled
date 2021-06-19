package com.jeppesen.jeppview.jtca.data;

import android.util.Log;
import java.util.Comparator;

public class Airport {

    /* renamed from: g */
    public static Comparator f601g = new Comparator() {
        /* class com.jeppesen.jeppview.jtca.data.Airport.C01331 */

        /* renamed from: a */
        public int compare(Airport airport, Airport airport2) {
            return airport.mo451a().compareTo(airport2.mo451a());
        }
    };

    /* renamed from: h */
    public static Comparator f602h = new Comparator() {
        /* class com.jeppesen.jeppview.jtca.data.Airport.C01342 */

        /* renamed from: a */
        public int compare(Airport airport, Airport airport2) {
            return airport.mo463f().compareTo(airport2.mo463f());
        }
    };

    /* renamed from: i */
    private static final String f603i = Airport.class.getSimpleName();

    /* renamed from: j */
    private static final String f604j = ".";

    /* renamed from: a */
    String f605a;

    /* renamed from: b */
    String f606b;

    /* renamed from: c */
    String f607c;

    /* renamed from: d */
    Float f608d;

    /* renamed from: e */
    Float f609e;

    /* renamed from: f */
    Float f610f;

    /* renamed from: k */
    private String f611k;

    public Airport(String str, String str2, String str3, String str4, String str5) {
        this.f605a = str;
        this.f606b = str2;
        this.f607c = str3;
        this.f608d = mo450a(str4);
        this.f609e = mo454b(str5);
        m546g();
    }

    /* renamed from: g */
    private void m546g() {
        this.f611k = mo451a() + " " + mo457c() + " " + mo455b();
        this.f611k = this.f611k.toLowerCase();
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public Float mo450a(String str) {
        NumberFormatException e;
        Float f = null;
        if (str == null || str.trim().equals("")) {
            return null;
        }
        try {
            Float valueOf = Float.valueOf(str.replace('N', '+').replace('S', '-').substring(0, 3));
            try {
                float parseFloat = Float.parseFloat(str.substring(3, 5)) / 60.0f;
                return valueOf.floatValue() < 0.0f ? Float.valueOf(valueOf.floatValue() - parseFloat) : Float.valueOf(parseFloat + valueOf.floatValue());
            } catch (NumberFormatException e2) {
                f = valueOf;
                e = e2;
                Log.w(f603i, e);
                return f;
            }
        } catch (NumberFormatException e3) {
            e = e3;
            Log.w(f603i, e);
            return f;
        }
    }

    /* renamed from: a */
    public String mo451a() {
        return this.f605a;
    }

    /* renamed from: a */
    public void mo452a(float f) {
        this.f608d = Float.valueOf(f);
        m546g();
    }

    /* renamed from: a */
    public void mo453a(Float f) {
        this.f610f = f;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: b */
    public Float mo454b(String str) {
        NumberFormatException e;
        Float f = null;
        if (str == null || str.trim().equals("")) {
            return null;
        }
        try {
            Float valueOf = Float.valueOf(str.replace('W', '-').replace('E', '+').substring(0, 4));
            try {
                float parseFloat = Float.parseFloat(str.substring(4, 6)) / 60.0f;
                return valueOf.floatValue() < 0.0f ? Float.valueOf(valueOf.floatValue() - parseFloat) : Float.valueOf(parseFloat + valueOf.floatValue());
            } catch (NumberFormatException e2) {
                f = valueOf;
                e = e2;
                Log.w(f603i, e);
                return f;
            }
        } catch (NumberFormatException e3) {
            e = e3;
            Log.w(f603i, e);
            return f;
        }
    }

    /* renamed from: b */
    public String mo455b() {
        return this.f606b;
    }

    /* renamed from: b */
    public void mo456b(float f) {
        this.f609e = Float.valueOf(f);
        m546g();
    }

    /* renamed from: c */
    public String mo457c() {
        return this.f607c;
    }

    /* renamed from: c */
    public void mo458c(String str) {
        this.f605a = str;
        m546g();
    }

    /* renamed from: d */
    public float mo459d() {
        return this.f608d.floatValue();
    }

    /* renamed from: d */
    public void mo460d(String str) {
        this.f606b = str;
        m546g();
    }

    /* renamed from: e */
    public float mo461e() {
        return this.f609e.floatValue();
    }

    /* renamed from: e */
    public void mo462e(String str) {
        this.f607c = str;
        m546g();
    }

    /* renamed from: f */
    public Float mo463f() {
        return this.f610f;
    }

    public String toString() {
        return this.f611k;
    }
}
