package com.jeppesen.android.p005tc.activity;

import android.content.DialogInterface;

/* renamed from: com.jeppesen.android.tc.activity.aj */
class DialogInterface$OnClickListenerC0026aj implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ DeactivateActivity f306a;

    DialogInterface$OnClickListenerC0026aj(DeactivateActivity deactivateActivity) {
        this.f306a = deactivateActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        new AsyncTaskC0028al(this.f306a, null).execute(new Void[0]);
    }
}
