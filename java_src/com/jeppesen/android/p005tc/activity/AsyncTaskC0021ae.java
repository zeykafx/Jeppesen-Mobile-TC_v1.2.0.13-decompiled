package com.jeppesen.android.p005tc.activity;

import android.location.Location;
import android.os.AsyncTask;
import com.jeppesen.android.p005tc.MobileTC;

/* renamed from: com.jeppesen.android.tc.activity.ae */
class AsyncTaskC0021ae extends AsyncTask {

    /* renamed from: a */
    Location f298a = null;

    /* renamed from: b */
    final /* synthetic */ ChartDisplayActivity f299b;

    public AsyncTaskC0021ae(ChartDisplayActivity chartDisplayActivity, Location location) {
        this.f299b = chartDisplayActivity;
        this.f298a = location;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
        }
        if (isCancelled()) {
        }
        return null;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Void r3) {
        if (MobileTC.m83g() != null && MobileTC.m83g().equals(this.f298a)) {
            ChartDisplayActivity.m212j(this.f299b).onLocationChanged(null);
        }
    }
}
