package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.d */
public class DialogInterface$OnClickListenerC0062d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f354a;

    DialogInterface$OnClickListenerC0062d(ActivationActivity activationActivity) {
        this.f354a = activationActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences.Editor edit = this.f354a.f126n.edit();
        edit.putBoolean("company_content", false);
        edit.commit();
        dialogInterface.cancel();
        this.f354a.m157a((ActivationActivity) false);
    }
}
