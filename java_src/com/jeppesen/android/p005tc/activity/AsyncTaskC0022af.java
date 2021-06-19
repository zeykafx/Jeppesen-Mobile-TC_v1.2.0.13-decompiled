package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import com.jeppesen.jeppview.jtca.JITHandler;
import com.jeppesen.jeppview.jtca.data.Chart;

/* renamed from: com.jeppesen.android.tc.activity.af */
class AsyncTaskC0022af extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f300a;

    private AsyncTaskC0022af(ChartDisplayActivity chartDisplayActivity) {
        this.f300a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0022af(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Chart doInBackground(Void... voidArr) {
        return this.f300a.mo157h();
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Chart chart) {
        ChartDisplayActivity.m187a(this.f300a, chart);
        if (ChartDisplayActivity.m207e(this.f300a) != null) {
            ChartDisplayActivity.m186a(this.f300a, JITHandler.m528a(chart));
            ChartDisplayActivity.m203b(this.f300a, ChartDisplayActivity.m207e(this.f300a));
            ChartDisplayActivity.m208f(this.f300a);
            ChartDisplayActivity.m193a(this.f300a, ChartDisplayActivity.m207e(this.f300a), true);
        }
    }
}
