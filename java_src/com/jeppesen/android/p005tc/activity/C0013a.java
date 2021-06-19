package com.jeppesen.android.p005tc.activity;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.jeppview.jtca.C0132c;
import java.io.IOException;

/* renamed from: com.jeppesen.android.tc.activity.a */
class C0013a extends Thread {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f275a;

    C0013a(ActivationActivity activationActivity) {
        this.f275a = activationActivity;
    }

    public void run() {
        try {
            C0132c.m543a(this.f275a.getApplicationContext(), MobileTC.m75b());
        } catch (IOException e) {
            Log.e(ActivationActivity.f101a, "DemoChartsTread interrupted");
        }
    }
}
