package com.jeppesen.android.p005tc.activity;

import android.widget.PopupWindow;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0115m;

/* renamed from: com.jeppesen.android.tc.activity.t */
class C0078t implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f378a;

    C0078t(ChartDisplayActivity chartDisplayActivity) {
        this.f378a = chartDisplayActivity;
    }

    public void onDismiss() {
        C0115m.m446a(this.f378a.getString(R.string.screenBrightness), this.f378a.getWindow().getAttributes().screenBrightness, this.f378a.getApplicationContext());
        ChartDisplayActivity.m199b(this.f378a).dismiss();
    }
}
