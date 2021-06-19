package com.jeppesen.android.p005tc.activity;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bj */
public class RunnableC0053bj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f342a;

    /* renamed from: b */
    final /* synthetic */ UpdateActivity f343b;

    RunnableC0053bj(UpdateActivity updateActivity, String str) {
        this.f343b = updateActivity;
        this.f342a = str;
    }

    public void run() {
        this.f343b.mo183a(String.valueOf(this.f342a));
    }
}
