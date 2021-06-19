package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* renamed from: com.jeppesen.android.tc.activity.v */
class DialogInterface$OnClickListenerC0080v implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f380a;

    DialogInterface$OnClickListenerC0080v(ChartDisplayActivity chartDisplayActivity) {
        this.f380a = chartDisplayActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences.Editor edit = ChartDisplayActivity.m205c(this.f380a).edit();
        edit.putBoolean(ChartDisplayActivity.m206d(this.f380a), true);
        edit.commit();
        dialogInterface.cancel();
        new AsyncTaskC0017aa(this.f380a, null).execute(new Void[0]);
    }
}
