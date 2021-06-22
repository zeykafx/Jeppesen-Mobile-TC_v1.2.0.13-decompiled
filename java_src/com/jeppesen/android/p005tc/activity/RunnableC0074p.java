package com.jeppesen.android.p005tc.activity;

import android.util.Log;
import com.jeppesen.android.echarts.TCLNatives;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.util.C0106d;
import com.jeppesen.jeppview.jtca.JITHandler;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.Chart;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.p */
class RunnableC0074p implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f374a;

    RunnableC0074p(ChartDisplayActivity chartDisplayActivity) {
        this.f374a = chartDisplayActivity;
    }

    public void run() {
        String str = null;
        if (ChartDisplayActivity.m215l(this.f374a) == null) {
            ChartDisplayActivity.m190a(this.f374a, JITHandler.m533b());
        }
        if (ChartDisplayActivity.m217m(this.f374a) == null || !ChartDisplayActivity.m217m(this.f374a).hasNext()) {
            ChartDisplayActivity.m189a(this.f374a, ChartDisplayActivity.m215l(this.f374a).iterator());
            ChartDisplayActivity.m202b(this.f374a, (List) null);
            ChartDisplayActivity.m201b(this.f374a, (Iterator) null);
        }
        if (ChartDisplayActivity.m218n(this.f374a) == null || !ChartDisplayActivity.m218n(this.f374a).hasNext()) {
            ChartDisplayActivity.m186a(this.f374a, (Airport) ChartDisplayActivity.m217m(this.f374a).next());
            ChartDisplayActivity.m202b(this.f374a, JITHandler.m535c(ChartDisplayActivity.m209g(this.f374a).mo451a()));
            ChartDisplayActivity.m201b(this.f374a, ChartDisplayActivity.m220o(this.f374a).iterator());
        }
        Chart chart = (Chart) ChartDisplayActivity.m218n(this.f374a).next();
        try {
            str = JITHandler.m532b(chart);
        } catch (C0106d e) {
            Log.e(ChartDisplayActivity.m214l(), "Oh No!" + e);
        }
        if (str == null) {
            Log.e(ChartDisplayActivity.m214l(), "Chart not found in .bin file ICAO: " + ChartDisplayActivity.m209g(this.f374a).mo451a() + " ID: " + chart.getChartFileName() + " Count: " + ChartDisplayActivity.m222p(this.f374a));
            this.f374a.mo159j();
            return;
        }
        ChartDisplayActivity.m225q(this.f374a);
        TCLNatives.setPathToTcl(str);
        ChartDisplayActivity.m226r(this.f374a);
        ChartDisplayActivity.m200b(this.f374a, ChartDisplayActivity.m222p(this.f374a) + " " + chart.getChartFileName());
        Log.i(ChartDisplayActivity.m214l(), "TestHandler called for ICAO: " + ChartDisplayActivity.m209g(this.f374a).mo451a() + " ID: " + chart.getChartFileName() + " Count: " + ChartDisplayActivity.m222p(this.f374a));
        ChartDisplayActivity.m184a(this.f374a, System.nanoTime());
        TCLNatives.setIcao(chart.mo469a());
        TCLNatives.setIndexNumber(chart.mo474c());
        TCLNatives.setProcedureId(chart.getChartFileName());
        MobileTC.clearBitmap();
        ChartDisplayActivity.m228s(this.f374a).requestRender();
    }
}
