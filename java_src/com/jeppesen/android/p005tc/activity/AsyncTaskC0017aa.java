package com.jeppesen.android.p005tc.activity;

import android.content.Intent;
import android.os.AsyncTask;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.aa */
class AsyncTaskC0017aa extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f294a;

    private AsyncTaskC0017aa(ChartDisplayActivity chartDisplayActivity) {
        this.f294a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0017aa(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Boolean doInBackground(Void... voidArr) {
        boolean b = C0002a.m7b();
        boolean i = C0005a.m42i();
        if (!C0115m.m451b("downloadIds", this.f294a.getApplicationContext()).isEmpty()) {
        }
        return !b && !i;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            Intent intent = new Intent(this.f294a.getApplicationContext(), ActivationActivity.class);
            intent.setFlags(67108864);
            this.f294a.startActivity(intent);
        }
    }
}
