package com.jeppesen.android.p005tc.activity;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bc */
public class RunnableC0046bc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f334a;

    /* renamed from: b */
    final /* synthetic */ UpdateActivity f335b;

    RunnableC0046bc(UpdateActivity updateActivity, int i) {
        this.f335b = updateActivity;
        this.f334a = i;
    }

    public void run() {
        this.f335b.showDialog(this.f334a);
    }
}
