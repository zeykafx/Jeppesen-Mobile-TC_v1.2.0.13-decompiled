package com.jeppesen.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.jeppesen.android.p005tc.R;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.jeppesen.android.util.m */
public class C0115m {

    /* renamed from: a */
    private static final String f472a = C0115m.class.getSimpleName();

    /* renamed from: a */
    public static String m444a(String str, Context context) {
        return context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).getString(str, "");
    }

    /* renamed from: a */
    public static void m445a(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.clear();
        edit.commit();
    }

    /* renamed from: a */
    public static void m446a(String str, float f, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.putFloat(str, f);
        edit.commit();
    }

    /* renamed from: a */
    public static void m447a(String str, int i, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.putInt(str, i);
        edit.commit();
    }

    /* renamed from: a */
    public static void m448a(String str, long j, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.putLong(str, j);
        edit.commit();
    }

    /* renamed from: a */
    public static void m449a(String str, String str2, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    /* renamed from: a */
    public static void m450a(String str, Set set, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.putStringSet(str, set);
        edit.commit();
    }

    /* renamed from: b */
    public static Set m451b(String str, Context context) {
        return context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).getStringSet(str, new HashSet());
    }

    /* renamed from: c */
    public static int m452c(String str, Context context) {
        return context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).getInt(str, 0);
    }

    /* renamed from: d */
    public static float m453d(String str, Context context) {
        return context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).getFloat(str, 0.0f);
    }

    /* renamed from: e */
    public static long m454e(String str, Context context) {
        return context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).getLong(str, 0);
    }

    /* renamed from: f */
    public static void m455f(String str, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getString(R.string.preferenceFileName), 0).edit();
        edit.remove(str);
        edit.commit();
    }
}
