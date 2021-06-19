package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.b */
public class DialogInterface$OnClickListenerC0043b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f331a;

    DialogInterface$OnClickListenerC0043b(ActivationActivity activationActivity) {
        this.f331a = activationActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.f331a.mo106d();
    }
}
