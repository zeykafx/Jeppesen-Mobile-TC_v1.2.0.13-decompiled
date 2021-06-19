package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.f */
class AsyncTaskC0064f extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f356a;

    private AsyncTaskC0064f(ActivationActivity activationActivity) {
        this.f356a = activationActivity;
    }

    /* synthetic */ AsyncTaskC0064f(ActivationActivity activationActivity, C0013a aVar) {
        this(activationActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        try {
            return Boolean.valueOf(C0010a.m98a(C0010a.m92a(this.f356a.getApplicationContext())));
        } catch (Exception e) {
            Log.w(ActivationActivity.f101a, e.getMessage());
            return false;
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        this.f356a.f125m.setVisibility(4);
        if (bool.booleanValue()) {
            this.f356a.m157a((ActivationActivity) true);
            return;
        }
        C0115m.m455f(C0010a.f68a, this.f356a.getApplicationContext());
        C0115m.m455f(C0010a.f69b, this.f356a.getApplicationContext());
        this.f356a.showDialog(14);
        this.f356a.mo104b();
    }
}
