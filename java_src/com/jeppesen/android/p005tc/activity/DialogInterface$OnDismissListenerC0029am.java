package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* renamed from: com.jeppesen.android.tc.activity.am */
class DialogInterface$OnDismissListenerC0029am implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    final /* synthetic */ LegalActivity f309a;

    DialogInterface$OnDismissListenerC0029am(LegalActivity legalActivity) {
        this.f309a = legalActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.f309a.finish();
    }
}
