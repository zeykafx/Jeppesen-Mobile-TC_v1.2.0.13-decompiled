package com.jeppesen.android.p005tc.activity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.al */
class AsyncTaskC0028al extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ DeactivateActivity f308a;

    private AsyncTaskC0028al(DeactivateActivity deactivateActivity) {
        this.f308a = deactivateActivity;
    }

    /* synthetic */ AsyncTaskC0028al(DeactivateActivity deactivateActivity, DialogInterface$OnClickListenerC0026aj ajVar) {
        this(deactivateActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        if (C0002a.m7b()) {
            C0002a.m14g();
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f308a.getApplicationContext());
        defaultSharedPreferences.getAll().toString();
        SharedPreferences.Editor edit = defaultSharedPreferences.edit();
        edit.clear();
        PreferenceManager.setDefaultValues(this.f308a.getApplicationContext(), R.xml.fragmented_preferences, true);
        edit.commit();
        C0115m.m445a(this.f308a.getApplicationContext());
        Intent intent = new Intent(this.f308a.getApplicationContext(), SplashScreenActivity.class);
        intent.setFlags(32768);
        intent.addFlags(268435456);
        this.f308a.startActivity(intent);
        return null;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Void r2) {
        this.f308a.finish();
    }

    /* access modifiers changed from: protected */
    public void onPreExecute() {
        ProgressDialog progressDialog = new ProgressDialog(this.f308a);
        progressDialog.setMessage(this.f308a.getString(R.string.deactivate_message));
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.show();
    }
}
