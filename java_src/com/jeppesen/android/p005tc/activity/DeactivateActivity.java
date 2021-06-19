package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.service.UpdateService;

/* renamed from: com.jeppesen.android.tc.activity.DeactivateActivity */
public class DeactivateActivity extends Activity {

    /* renamed from: a */
    private static final String f221a = DeactivateActivity.class.getSimpleName();

    /* renamed from: a */
    private Dialog m244a(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setCancelable(false);
        builder.setPositiveButton("Proceed", new DialogInterface$OnClickListenerC0026aj(this));
        builder.setNegativeButton("Cancel", new DialogInterface$OnClickListenerC0027ak(this));
        return builder.create();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        Log.d(f221a, "onCreate of DeactivateActivity");
        if (getIntent().getAction().equals("com.jeppesen.android.tc.activity.DeactivateActivity")) {
            super.onCreate(bundle);
            showDialog(0);
        }
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int i) {
        switch (i) {
            case UpdateService.f405b /*{ENCODED_INT: 0}*/:
                return m244a(getString(R.string.are_you_sure), getString(R.string.deactivate_serial_number));
            default:
                return null;
        }
    }
}
