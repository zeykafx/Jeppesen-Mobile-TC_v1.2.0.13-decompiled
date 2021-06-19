package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.c */
public class DialogInterface$OnClickListenerC0061c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f353a;

    DialogInterface$OnClickListenerC0061c(ActivationActivity activationActivity) {
        this.f353a = activationActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.f353a.mo104b();
    }
}
