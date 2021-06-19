package com.jeppesen.android.echarts;

import android.util.Log;

/* renamed from: com.jeppesen.android.echarts.a */
public class C0006a {

    /* renamed from: a */
    private boolean f30a = false;

    public C0006a(String str, String str2, String str3) {
        EChartsJNI.tclLibInit(str, str2, str3);
        this.f30a = true;
    }

    /* renamed from: a */
    public void mo18a() {
        if (this.f30a) {
            this.f30a = false;
            EChartsJNI.tclLibClose();
        }
    }

    public void finalize() {
        if (this.f30a) {
            Log.w("MC3WrapperFinalize", "tclLibClose from finalize()");
            try {
                mo18a();
            } catch (EChartsError e) {
                Log.e("MC3WrapperFinalize", "tclLibClose Failed: " + e.getWrapperID() + "/" + e.getError());
            } catch (ClassNotFoundException e2) {
                Log.e("MC3WrapperFinalize", "tclLibClose Failed: " + e2.getMessage());
            }
        }
    }
}
