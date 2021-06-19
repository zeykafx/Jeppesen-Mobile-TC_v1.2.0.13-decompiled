package com.jeppesen.android.p005tc.activity;

import android.widget.AbsListView;

/* renamed from: com.jeppesen.android.tc.activity.r */
class C0076r implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f376a;

    C0076r(ChartDisplayActivity chartDisplayActivity) {
        this.f376a = chartDisplayActivity;
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f376a.f209o != 0) {
            this.f376a.f208n = i;
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.f376a.f209o = i;
    }
}
