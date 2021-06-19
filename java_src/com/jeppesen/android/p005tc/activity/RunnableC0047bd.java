package com.jeppesen.android.p005tc.activity;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bd */
public class RunnableC0047bd implements Runnable {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f336a;

    RunnableC0047bd(UpdateActivity updateActivity) {
        this.f336a = updateActivity;
    }

    public void run() {
        this.f336a.f261m.setProgress(this.f336a.f265q);
        String str = this.f336a.f265q + "% of " + this.f336a.f264p + "MB";
        long j = this.f336a.f251N / 60;
        if (j > 1) {
            str = this.f336a.f265q + "% of " + this.f336a.f264p + "MB (est. time remaining: " + j + " minutes)";
        } else if (j == 1) {
            str = this.f336a.f265q + "% of " + this.f336a.f264p + "MB (est. time remaining: 1 minute)";
        } else if (this.f336a.f251N > 1) {
            str = this.f336a.f265q + "% of " + this.f336a.f264p + "MB (est. time remaining: " + this.f336a.f251N + " seconds)";
        } else if (this.f336a.f251N == 1) {
            str = this.f336a.f265q + "% of " + this.f336a.f264p + "MB (est. time remaining: 1 second)";
        }
        this.f336a.f263o.setText(str);
    }
}
