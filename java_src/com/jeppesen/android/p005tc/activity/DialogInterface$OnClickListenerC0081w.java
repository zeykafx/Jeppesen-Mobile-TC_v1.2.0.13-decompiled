package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* renamed from: com.jeppesen.android.tc.activity.w */
class DialogInterface$OnClickListenerC0081w implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f381a;

    DialogInterface$OnClickListenerC0081w(ChartDisplayActivity chartDisplayActivity) {
        this.f381a = chartDisplayActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.f381a.finish();
    }
}
