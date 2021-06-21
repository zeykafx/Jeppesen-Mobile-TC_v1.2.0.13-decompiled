package com.jeppesen.android.p005tc.activity;

import android.location.Location;
import android.location.LocationListener;
import android.os.AsyncTask;
import android.os.Bundle;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.service.UpdateService;

/* renamed from: com.jeppesen.android.tc.activity.x */
class C0082x implements LocationListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f382a;

    C0082x(ChartDisplayActivity chartDisplayActivity) {
        this.f382a = chartDisplayActivity;
    }

    public void onLocationChanged(Location location) {
        this.f382a.f213s = location;
        MobileTC.m73a(this.f382a.f213s);
        ChartDisplayActivity.m210h(this.f382a).invalidate();
        if (this.f382a.noManualPopup.isShowing()) {
            ChartDisplayActivity.m211i(this.f382a);
        }
        if (this.f382a.f214t != null) {
            this.f382a.f214t.cancel(true);
        }
        if (location != null) {
            this.f382a.f214t = (AsyncTaskC0021ae) new AsyncTaskC0021ae(this.f382a, location).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            if (ChartDisplayActivity.m216m() != null) {
                ChartDisplayActivity.m216m().setImageResource(R.drawable.icongps);
                ChartDisplayActivity.m216m().invalidate();
            }
        } else if (ChartDisplayActivity.m216m() != null) {
            ChartDisplayActivity.m216m().setImageResource(R.drawable.icongps_badge);
            ChartDisplayActivity.m216m().invalidate();
        }
    }

    public void onProviderDisabled(String str) {
        onLocationChanged(null);
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
        switch (i) {
            case UpdateService.f405b /*{ENCODED_INT: 0}*/:
                onLocationChanged(null);
                return;
            case 1:
            case UpdateService.f407d /*{ENCODED_INT: 2}*/:
            default:
                return;
        }
    }
}
