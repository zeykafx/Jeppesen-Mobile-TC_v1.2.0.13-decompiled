package com.jeppesen.android.views.imagezoom;

import android.os.SystemClock;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.views.imagezoom.c */
public class RunnableC0122c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0121b f510a;

    RunnableC0122c(C0121b bVar) {
        this.f510a = bVar;
    }

    public void run() {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.f510a.f502i.mo432a(uptimeMillis);
        this.f510a.f503j.mo432a(uptimeMillis);
        boolean z = this.f510a.f502i.mo433a(0.004f, 0.01f) && this.f510a.f503j.mo433a(0.004f, 0.01f);
        this.f510a.f500g.mo447c(this.f510a.f502i.mo428a());
        this.f510a.f500g.mo448d(this.f510a.f503j.mo428a());
        if (!z) {
            this.f510a.f508o.postDelayed(this.f510a.f509p, 20 - (SystemClock.uptimeMillis() - uptimeMillis));
        }
        this.f510a.f500g.notifyObservers();
    }
}
