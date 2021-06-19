package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bq */
public class AsyncTaskC0060bq extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f352a;

    AsyncTaskC0060bq(UpdateActivity updateActivity) {
        this.f352a = updateActivity;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        Log.d(UpdateActivity.f232c, "ServiceProgressObserver.doInBackground()");
        while (!isCancelled() && this.f352a.f257i != null) {
            if (this.f352a.mo184a(this.f352a.f257i.mo367a())) {
                cancel(true);
            }
            try {
                Thread.sleep(250);
            } catch (InterruptedException e) {
            }
        }
        return "done";
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        Log.d(UpdateActivity.f232c, "ServiceProgessObserver.onPostExecute()");
    }
}
