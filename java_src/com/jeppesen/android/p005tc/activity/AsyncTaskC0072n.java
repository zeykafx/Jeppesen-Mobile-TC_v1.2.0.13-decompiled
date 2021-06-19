package com.jeppesen.android.p005tc.activity;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.jeppesen.android.p005tc.activity.ApplicationPreferencesActivity;
import com.jeppesen.android.p005tc.p006a.C0010a;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.n */
class AsyncTaskC0072n extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ApplicationPreferencesActivity.UpdatesFragment f370a;

    /* renamed from: b */
    private SharedPreferences f371b;

    /* renamed from: c */
    private String f372c;

    private AsyncTaskC0072n(ApplicationPreferencesActivity.UpdatesFragment updatesFragment) {
        this.f370a = updatesFragment;
        this.f371b = PreferenceManager.getDefaultSharedPreferences(ApplicationPreferencesActivity.f128c);
        this.f372c = null;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List doInBackground(Void... voidArr) {
        this.f370a.f135b = true;
        new ArrayList();
        try {
            List a = C0010a.m93a(C0010a.m92a(ApplicationPreferencesActivity.f128c), this.f371b.getBoolean("company_content", true));
            C0010a.m107d(a);
            return a;
        } catch (Exception e) {
            Log.w(ApplicationPreferencesActivity.f129d, e.getMessage());
            this.f372c = e.getMessage();
            return null;
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(List list) {
        ApplicationPreferencesActivity.f127a = list;
        this.f370a.f135b = false;
        this.f370a.mo118a(this.f372c);
        this.f370a.f134a.dismiss();
    }
}
