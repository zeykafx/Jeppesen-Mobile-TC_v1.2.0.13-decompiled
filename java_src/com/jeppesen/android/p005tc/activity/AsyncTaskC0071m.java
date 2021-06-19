package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import android.view.WindowManager;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.m */
class AsyncTaskC0071m extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ApplicationPreferencesActivity f369a;

    private AsyncTaskC0071m(ApplicationPreferencesActivity applicationPreferencesActivity) {
        this.f369a = applicationPreferencesActivity;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Float doInBackground(Void... voidArr) {
        float d = C0115m.m453d(this.f369a.getString(R.string.screenBrightness), this.f369a.getApplicationContext());
        Log.d(ApplicationPreferencesActivity.m176d(), "got screen brightness setting");
        return Float.valueOf(d);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Float f) {
        if (f.floatValue() > 0.0f) {
            WindowManager.LayoutParams attributes = this.f369a.getWindow().getAttributes();
            attributes.screenBrightness = f.floatValue();
            this.f369a.getWindow().setAttributes(attributes);
        }
    }
}
