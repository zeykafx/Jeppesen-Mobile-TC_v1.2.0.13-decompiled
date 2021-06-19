package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bb */
public class DialogInterface$OnClickListenerC0045bb implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f333a;

    DialogInterface$OnClickListenerC0045bb(UpdateActivity updateActivity) {
        this.f333a = updateActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.f333a.f241D.delete(0, this.f333a.f241D.length());
        this.f333a.f242E = 0;
        this.f333a.f270v = false;
    }
}
