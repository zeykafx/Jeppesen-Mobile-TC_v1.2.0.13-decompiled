package com.jeppesen.android.p005tc.activity.p007a;

import android.location.Location;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.a.c */
public class RunnableC0016c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Location f292a;

    /* renamed from: b */
    final /* synthetic */ AsyncTaskC0015b f293b;

    RunnableC0016c(AsyncTaskC0015b bVar, Location location) {
        this.f293b = bVar;
        this.f292a = location;
    }

    public void run() {
        this.f293b.f291a.f280b.onLocationChanged(this.f292a);
    }
}
