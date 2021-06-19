package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.ba */
public class DialogInterface$OnClickListenerC0044ba implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f332a;

    DialogInterface$OnClickListenerC0044ba(UpdateActivity updateActivity) {
        this.f332a = updateActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences.Editor edit = this.f332a.f243F.edit();
        edit.putBoolean(this.f332a.f244G, true);
        edit.putBoolean(this.f332a.f245H, true);
        edit.putBoolean(this.f332a.f246I, false);
        edit.commit();
        dialogInterface.cancel();
        this.f332a.f241D.delete(0, this.f332a.f241D.length());
        this.f332a.f242E = 0;
        this.f332a.f270v = false;
        this.f332a.m274d((UpdateActivity) this.f332a.f269u);
    }
}
