package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.JeppAndroidApp;

/* renamed from: com.jeppesen.android.tc.activity.au */
class AsyncTaskC0037au extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ SplashScreenActivity f325a;

    AsyncTaskC0037au(SplashScreenActivity splashScreenActivity) {
        this.f325a = splashScreenActivity;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        if (JeppAndroidApp.f436a) {
            Log.i(SplashScreenActivity.m249b(), "in_doInBackground - starting initialization");
        }
        String m = ((MobileTC) this.f325a.getApplication()).mo45m();
        if (JeppAndroidApp.f436a) {
            Log.i(SplashScreenActivity.m249b(), "in_doInBackground - initialization finished");
        }
        return m;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (str.equals("rooted")) {
            MobileTC.m70a(this.f325a, this.f325a.getString(R.string.rooted));
            this.f325a.finish();
        } else if (str.equals("failed")) {
            MobileTC.m70a(this.f325a, this.f325a.getString(R.string.not_supported));
            this.f325a.finish();
        } else {
            if (MobileTC.m82f()) {
                MobileTC.m70a(this.f325a, this.f325a.getString(R.string.update_status_charts_expired));
            }
            this.f325a.f230c = true;
        }
    }
}
