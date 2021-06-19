package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.view.WindowManager;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.ag */
class AsyncTaskC0023ag extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f301a;

    private AsyncTaskC0023ag(ChartDisplayActivity chartDisplayActivity) {
        this.f301a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0023ag(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Float doInBackground(Void... voidArr) {
        return Float.valueOf(C0115m.m453d(this.f301a.getString(R.string.screenBrightness), this.f301a.getApplicationContext()));
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Float f) {
        if (f.floatValue() > 0.0f) {
            WindowManager.LayoutParams attributes = this.f301a.getWindow().getAttributes();
            attributes.screenBrightness = f.floatValue();
            this.f301a.getWindow().setAttributes(attributes);
        }
    }
}
