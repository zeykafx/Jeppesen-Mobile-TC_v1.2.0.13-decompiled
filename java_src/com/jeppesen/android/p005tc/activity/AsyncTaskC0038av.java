package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import android.view.WindowManager;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.av */
class AsyncTaskC0038av extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ SplashScreenActivity f326a;

    private AsyncTaskC0038av(SplashScreenActivity splashScreenActivity) {
        this.f326a = splashScreenActivity;
    }

    /* synthetic */ AsyncTaskC0038av(SplashScreenActivity splashScreenActivity, C0036at atVar) {
        this(splashScreenActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Float doInBackground(Void... voidArr) {
        float d = C0115m.m453d(this.f326a.getString(R.string.screenBrightness), this.f326a.getApplicationContext());
        Log.d(SplashScreenActivity.m249b(), "got screen brightness setting");
        return Float.valueOf(d);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Float f) {
        if (f.floatValue() > 0.0f) {
            WindowManager.LayoutParams attributes = this.f326a.getWindow().getAttributes();
            attributes.screenBrightness = f.floatValue();
            this.f326a.getWindow().setAttributes(attributes);
        }
    }
}
