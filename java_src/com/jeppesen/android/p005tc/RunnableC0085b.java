package com.jeppesen.android.p005tc;

import android.app.Activity;
import android.widget.Toast;

/* renamed from: com.jeppesen.android.tc.b */
final class RunnableC0085b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Activity f385a;

    /* renamed from: b */
    final /* synthetic */ String f386b;

    /* renamed from: c */
    final /* synthetic */ int f387c;

    RunnableC0085b(Activity activity, String str, int i) {
        this.f385a = activity;
        this.f386b = str;
        this.f387c = i;
    }

    public void run() {
        Toast makeText = Toast.makeText(this.f385a, this.f386b, this.f387c);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }
}
