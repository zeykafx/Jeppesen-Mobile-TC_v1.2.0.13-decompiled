package com.jeppesen.android.p005tc.activity;

import android.widget.PopupWindow;

/* renamed from: com.jeppesen.android.tc.activity.s */
class C0077s implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f377a;

    C0077s(ChartDisplayActivity chartDisplayActivity) {
        this.f377a = chartDisplayActivity;
    }

    public void onDismiss() {
        this.f377a.viewSwitcher.setInAnimation(this.f377a, 17432576);
        this.f377a.viewSwitcher.setOutAnimation(this.f377a, 17432577);
    }
}
