package com.jeppesen.android.p005tc.p006a;

import android.os.Environment;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.jeppesen.android.tc.a.b */
public class C0011b {

    /* renamed from: a */
    JSONObject f94a;

    public C0011b() {
    }

    public C0011b(JSONObject jSONObject) {
        this.f94a = jSONObject;
        try {
            if (this.f94a.opt(C0010a.f76i) == null) {
                this.f94a.put(C0010a.f76i, jSONObject.optString(C0010a.f74g).replace('.', '_') + "_" + jSONObject.getString(C0010a.f71d));
            }
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo49a(long j) {
        try {
            this.f94a.put(C0010a.f78k, j);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo50a(String str) {
        if (str == null) {
            str = "";
        }
        try {
            this.f94a.put(C0010a.f73f, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public void mo51a(boolean z) {
        try {
            this.f94a.put(C0010a.f84q, z);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: a */
    public boolean mo52a() {
        String externalStorageState = Environment.getExternalStorageState();
        if (!"mounted".equals(externalStorageState)) {
            if ("mounted_ro".equals(externalStorageState)) {
                Log.w(C0010a.f87t, "ExternalStorageState: READ_ONLY!");
            } else {
                Log.e(C0010a.f87t, "ExternalStorageState: FOOBAR!!");
            }
        }
        File file = new File(MobileTC.m77c().getAbsolutePath() + File.separatorChar + this.f94a.optString(C0010a.f76i));
        return file.exists() && file.length() == mo67k();
    }

    /* renamed from: b */
    public String mo53b() {
        try {
            return this.f94a.getString(C0010a.f72e);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: b */
    public void mo54b(long j) {
        try {
            this.f94a.put(C0010a.f75h, j);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: b */
    public void mo55b(String str) {
        try {
            this.f94a.put(C0010a.f77j, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: c */
    public String mo56c() {
        try {
            return this.f94a.getString(C0010a.f71d);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: c */
    public void mo57c(String str) {
        try {
            this.f94a.put(C0010a.f71d, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: d */
    public long mo59d() {
        try {
            return this.f94a.getLong(C0010a.f70c);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return 0;
        }
    }

    /* renamed from: d */
    public void mo60d(String str) {
        try {
            this.f94a.put(C0010a.f76i, str);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
        }
    }

    /* renamed from: e */
    public String mo61e() {
        try {
            return this.f94a.getString(C0010a.f73f);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: f */
    public String mo62f() {
        try {
            return this.f94a.getString(C0010a.f74g);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    /* renamed from: g */
    public String mo63g() {
        return this.f94a.optString(C0010a.f77j);
    }

    /* renamed from: h */
    public long mo64h() {
        return this.f94a.optLong(C0010a.f78k);
    }

    /* renamed from: i */
    public String mo65i() {
        return this.f94a.optString(C0010a.f76i);
    }

    /* renamed from: j */
    public boolean mo66j() {
        return this.f94a.optBoolean(C0010a.f84q);
    }

    /* renamed from: k */
    public long mo67k() {
        try {
            return this.f94a.getLong(C0010a.f75h);
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return 0;
        }
    }

    /* renamed from: l */
    public String mo68l() {
        return this.f94a.optString(C0010a.f83p);
    }

    /* renamed from: m */
    public String mo69m() {
        return mo68l().equals(C0010a.f86s) ? "Standard Airway Manual" : "Company Manual";
    }

    /* renamed from: n */
    public String mo70n() {
        return this.f94a.toString();
    }

    /* renamed from: o */
    public JSONObject mo71o() {
        return this.f94a;
    }

    /* renamed from: p */
    public C0011b clone() {
        try {
            return new C0011b(new JSONObject(this.f94a.toString()));
        } catch (JSONException e) {
            Log.e(C0010a.f87t, "Oh No!", e);
            return null;
        }
    }

    public String toString() {
        String str = mo52a() ? "✓" : "↓";
        if (!mo66j()) {
            str = "";
        }
        return mo53b() + " (" + mo65i() + ") " + str;
    }
}
