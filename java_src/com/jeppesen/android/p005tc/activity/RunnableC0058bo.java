package com.jeppesen.android.p005tc.activity;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bo */
public class RunnableC0058bo implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Exception f348a;

    /* renamed from: b */
    final /* synthetic */ AsyncTaskC0057bn f349b;

    RunnableC0058bo(AsyncTaskC0057bn bnVar, Exception exc) {
        this.f349b = bnVar;
        this.f348a = exc;
    }

    public void run() {
        this.f349b.f347a.mo183a("Unable to obtain coverages list, " + this.f348a.getMessage());
    }
}
