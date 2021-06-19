package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import com.jeppesen.android.p005tc.R;

/* renamed from: com.jeppesen.android.tc.activity.LegalActivity */
public class LegalActivity extends Activity {

    /* renamed from: a */
    private static final String f222a = UpdateActivity.class.getSimpleName();

    /* renamed from: e */
    private static final int f223e = 1;

    /* renamed from: b */
    private StringBuffer f224b = new StringBuffer();

    /* renamed from: c */
    private StringBuffer f225c = new StringBuffer();

    /* renamed from: d */
    private StringBuffer f226d = new StringBuffer();

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        Log.d(f222a, "Legal Activity onCreate()");
        super.onCreate(bundle);
        setContentView(R.layout.eula_dialog);
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int i) {
        switch (i) {
            case 1:
                String stringBuffer = this.f226d.toString();
                String stringBuffer2 = this.f225c.toString();
                AlertDialog create = new AlertDialog.Builder(this).create();
                create.setTitle(stringBuffer);
                create.setMessage(stringBuffer2);
                create.setIconAttribute(16843605);
                create.setOnDismissListener(new DialogInterface$OnDismissListenerC0029am(this));
                return create;
            default:
                return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        Log.d(f222a, "LegalActivity onDestroy()");
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        String stringExtra = getIntent().getStringExtra("EULA_TYPE");
        if (stringExtra == null) {
            finish();
        } else if (stringExtra.equals("APP_EULA")) {
            ((WebView) findViewById(R.id.EulaDialogWebView)).loadUrl("file:///android_asset/appEula.html");
        } else {
            new AsyncTaskC0030an(this, null).execute(new Void[0]);
        }
    }
}
