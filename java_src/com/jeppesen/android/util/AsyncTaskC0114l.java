package com.jeppesen.android.util;

import android.content.Context;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import com.jeppesen.android.p005tc.activity.ChartDisplayActivity;
import com.jeppesen.android.p005tc.p006a.C0010a;

/* renamed from: com.jeppesen.android.util.l */
public class AsyncTaskC0114l extends AsyncTask {
    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Boolean doInBackground(Context... contextArr) {
        boolean z = false;
        boolean a = C0010a.m95a();
        boolean a2 = C0010a.m96a(contextArr[0], PreferenceManager.getDefaultSharedPreferences(contextArr[0]).getBoolean("company_content", true));
        if (a || a2) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        ChartDisplayActivity.m195a(bool.booleanValue());
    }
}
