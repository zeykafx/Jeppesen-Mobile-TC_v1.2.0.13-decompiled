package com.jeppesen.android.p005tc.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.service.ManualsService;
import com.jeppesen.android.util.C0109g;
import com.jeppesen.android.util.C0110h;
import com.jeppesen.android.util.C0115m;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.ax */
public class C0040ax extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f328a;

    C0040ax(UpdateActivity updateActivity) {
        this.f328a = updateActivity;
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
            long longExtra = intent.getLongExtra("extra_download_id", 0);
            if (this.f328a.f252O.contains(String.valueOf(longExtra))) {
                this.f328a.f252O.remove(String.valueOf(longExtra));
                C0115m.m450a("downloadIds", this.f328a.f252O, this.f328a.getApplicationContext());
                C0110h a = new C0109g(this.f328a).mo384a(longExtra);
                Log.d(UpdateActivity.f232c, "onReceive(ACTION_DOWNLOAD_COMPLETE): " + a);
                if (a.mo392b().equals(16)) {
                    this.f328a.mo186c(this.f328a.getString(R.string.update_status_error_generic));
                }
                if (!this.f328a.f252O.isEmpty()) {
                    return;
                }
                if (ManualsService.m362a()) {
                    this.f328a.mo185b(this.f328a.getString(R.string.update_manuals_postprocessing));
                } else {
                    this.f328a.mo185b(this.f328a.getString(R.string.update_manuals_no_update_needed));
                }
            }
        }
    }
}
