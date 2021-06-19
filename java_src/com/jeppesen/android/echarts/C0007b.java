package com.jeppesen.android.echarts;

import android.util.Log;
import java.io.File;

/* renamed from: com.jeppesen.android.echarts.b */
public class C0007b {

    /* renamed from: a */
    private int f31a = 0;

    /* renamed from: b */
    private String f32b = null;

    /* renamed from: c */
    private EChartsInfo f33c = null;

    public C0007b() {
    }

    public C0007b(int i) {
        this.f31a = i;
        this.f32b = new String();
    }

    public C0007b(File file) {
        mo21a(file);
    }

    public C0007b(String str) {
        mo22a(str);
    }

    /* renamed from: a */
    public final int mo20a() {
        return this.f31a;
    }

    /* renamed from: a */
    public void mo21a(File file) {
        mo22a(file.getAbsolutePath());
    }

    /* renamed from: a */
    public void mo22a(String str) {
        mo23b();
        Log.d("ChartWrapper", "Opening Chart " + str);
        this.f31a = EChartsJNI.tclOpen(str, 1, "");
        this.f32b = str;
        if (this.f31a > 0) {
            this.f33c = new EChartsInfo();
            EChartsJNI.tclGetChartInfo(this.f31a, this.f33c);
            Log.v("ChartWrapper", "Opened Chart " + this.f31a + ": " + str);
            return;
        }
        this.f33c = null;
        Log.w("ChartWrapper", "Failed to open chart " + str);
    }

    /* renamed from: b */
    public void mo23b() {
        if (this.f31a > 0) {
            Log.v("ChartWrapper", "Closing Chart " + this.f31a + ": " + this.f32b);
            EChartsJNI.tclClose(this.f31a);
            Log.v("ChartWrapper", "Closed Chart " + this.f31a + ": " + this.f32b);
        }
        this.f31a = 0;
        this.f32b = null;
        this.f33c = null;
    }

    /* renamed from: c */
    public final EChartsInfo mo24c() {
        if (this.f33c == null) {
            this.f33c = new EChartsInfo();
        }
        return this.f33c;
    }

    public void finalize() {
        if (this.f31a > 0) {
            Log.w("ChartWrapperFinalize", "tclClose from finalize()");
            try {
                mo23b();
            } catch (EChartsError e) {
                Log.e("ChartWrapperFinalize", "tclClose Failed: " + e.getWrapperID() + "/" + e.getError());
            } catch (ClassNotFoundException e2) {
                Log.e("ChartWrapperFinalize", "tclClose Failed: " + e2.getMessage());
            }
        }
    }
}
