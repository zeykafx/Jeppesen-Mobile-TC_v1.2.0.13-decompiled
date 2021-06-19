package com.jeppesen.android.p005tc.p006a;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.jeppesen.android.tc.a.c */
public class C0012c {

    /* renamed from: a */
    JSONObject f95a;

    public C0012c(JSONObject jSONObject) {
        this.f95a = jSONObject;
        try {
            if (this.f95a.opt(C0010a.f76i) == null) {
                this.f95a.put(C0010a.f76i, jSONObject.optString(C0010a.f74g).replace('.', '_') + "_" + jSONObject.getString(C0010a.f71d));
            }
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo74a(long j) {
        try {
            this.f95a.put(C0010a.f78k, j);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo75a(String str) {
        if (str == null) {
            str = "";
        }
        try {
            this.f95a.put(C0010a.f73f, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo76a(boolean z) {
        try {
            this.f95a.put(C0010a.f84q, z);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public boolean mo77a() {
        File file = new File(MobileTC.m79d().getAbsolutePath() + File.separatorChar + this.f95a.optString(C0010a.f76i));
        return file.exists() && file.length() == mo94l();
    }

    /* renamed from: b */
    public String mo78b() {
        try {
            return this.f95a.getString(C0010a.f79l);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: b */
    public void mo79b(long j) {
        try {
            this.f95a.put(C0010a.f75h, j);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: b */
    public void mo80b(String str) {
        try {
            this.f95a.put(C0010a.f77j, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: c */
    public String mo81c() {
        try {
            return this.f95a.getString(C0010a.f71d);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: c */
    public void mo82c(String str) {
        try {
            this.f95a.put(C0010a.f71d, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: d */
    public long mo84d() {
        try {
            return this.f95a.getLong(C0010a.f70c);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return 0;
        }
    }

    /* renamed from: d */
    public void mo85d(String str) {
        try {
            this.f95a.put(C0010a.f80m, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: e */
    public String mo86e() {
        try {
            return this.f95a.getString(C0010a.f73f);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: e */
    public void mo87e(String str) {
        try {
            this.f95a.put(C0010a.f76i, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: f */
    public String mo88f() {
        try {
            return this.f95a.getString(C0010a.f74g);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: g */
    public String mo89g() {
        return this.f95a.optString(C0010a.f77j);
    }

    /* renamed from: h */
    public long mo90h() {
        return this.f95a.optLong(C0010a.f78k);
    }

    /* renamed from: i */
    public String mo91i() {
        return this.f95a.optString(C0010a.f80m);
    }

    /* renamed from: j */
    public String mo92j() {
        return this.f95a.optString(C0010a.f76i);
    }

    /* renamed from: k */
    public boolean mo93k() {
        return this.f95a.optBoolean(C0010a.f84q);
    }

    /* renamed from: l */
    public long mo94l() {
        try {
            return this.f95a.getLong(C0010a.f75h);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return 0;
        }
    }

    /* renamed from: m */
    public String mo95m() {
        return this.f95a.toString();
    }

    /* renamed from: n */
    public JSONObject mo96n() {
        return this.f95a;
    }

    /* renamed from: o */
    public C0012c clone() {
        try {
            return new C0012c(new JSONObject(this.f95a.toString()));
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    public String toString() {
        String str = mo77a() ? "✓" : "↓";
        if (!mo93k()) {
            str = "";
        }
        return mo78b() + " (" + mo92j() + ") " + str;
    }
}
