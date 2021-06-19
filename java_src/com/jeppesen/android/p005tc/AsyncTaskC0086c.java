package com.jeppesen.android.p005tc;

import android.os.AsyncTask;
import com.jeppesen.android.util.C0111i;

/* renamed from: com.jeppesen.android.tc.c */
class AsyncTaskC0086c extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ MobileTC f388a;

    private AsyncTaskC0086c(MobileTC mobileTC) {
        this.f388a = mobileTC;
    }

    /* synthetic */ AsyncTaskC0086c(MobileTC mobileTC, RunnableC0085b bVar) {
        this(mobileTC);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        C0111i.m418b(this.f388a.getApplicationContext());
        return null;
    }
}
