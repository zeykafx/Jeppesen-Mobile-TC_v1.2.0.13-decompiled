package com.jeppesen.android.p005tc.activity;

import com.jeppesen.android.p005tc.R;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bh */
public class RunnableC0051bh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f340a;

    RunnableC0051bh(UpdateActivity updateActivity) {
        this.f340a = updateActivity;
    }

    public void run() {
        this.f340a.f261m.setVisibility(4);
        this.f340a.f262n.setVisibility(0);
        this.f340a.f263o.setText(this.f340a.getString(R.string.update_status_merging_extras));
    }
}
