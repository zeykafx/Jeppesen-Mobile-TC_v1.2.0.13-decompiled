package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* renamed from: com.jeppesen.android.tc.activity.ak */
class DialogInterface$OnClickListenerC0027ak implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ DeactivateActivity f307a;

    DialogInterface$OnClickListenerC0027ak(DeactivateActivity deactivateActivity) {
        this.f307a = deactivateActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.f307a.finish();
    }
}
