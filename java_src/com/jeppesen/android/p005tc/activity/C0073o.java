package com.jeppesen.android.p005tc.activity;

import android.widget.AbsListView;

/* renamed from: com.jeppesen.android.tc.activity.o */
class C0073o implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f373a;

    C0073o(ChartDisplayActivity chartDisplayActivity) {
        this.f373a = chartDisplayActivity;
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f373a.f207m == 0) {
            return;
        }
        if (!ChartDisplayActivity.m196a(this.f373a)) {
            this.f373a.f205k = i;
        } else if (this.f373a.airportSearchEditText.getText().length() > 0) {
            this.f373a.f206l = i;
        } else {
            this.f373a.f204j = i;
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.f373a.f207m = i;
    }
}
