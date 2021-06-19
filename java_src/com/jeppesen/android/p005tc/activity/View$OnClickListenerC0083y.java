package com.jeppesen.android.p005tc.activity;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;

/* renamed from: com.jeppesen.android.tc.activity.y */
class View$OnClickListenerC0083y implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f383a;

    View$OnClickListenerC0083y(ChartDisplayActivity chartDisplayActivity) {
        this.f383a = chartDisplayActivity;
    }

    public void onClick(View view) {
        ChartDisplayActivity.m210h(this.f383a).setOnClickListener(null);
        ChartDisplayActivity.m210h(this.f383a).setImageResource(0);
        ChartDisplayActivity.m197a(this.f383a, false);
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.f383a.getBaseContext()).edit();
        edit.remove("quick_tips_preference");
        edit.putBoolean(ChartDisplayActivity.m213k(this.f383a), false);
        edit.commit();
    }
}
