package com.jeppesen.android.p005tc.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.service.BinderC0102c;

/* renamed from: com.jeppesen.android.tc.activity.ay */
class ServiceConnectionC0041ay implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f329a;

    ServiceConnectionC0041ay(UpdateActivity updateActivity) {
        this.f329a = updateActivity;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.d(UpdateActivity.f232c, "onServiceConnected()");
        this.f329a.f272x = true;
        this.f329a.f257i = ((BinderC0102c) iBinder).mo379a();
        if (this.f329a.f260l != null && !this.f329a.f260l.isCancelled()) {
            this.f329a.f260l.cancel(true);
        }
        this.f329a.f260l = new AsyncTaskC0060bq(this.f329a);
        this.f329a.f260l.execute(new Void[0]);
        this.f329a.getWindow().addFlags(128);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        Log.d(UpdateActivity.f232c, "onServiceDisconnected()");
        if (this.f329a.f257i != null) {
            this.f329a.mo184a(this.f329a.f257i.mo367a());
        }
        this.f329a.f257i = null;
        this.f329a.unbindService(this.f329a.f254Q);
        this.f329a.f258j = false;
        this.f329a.f272x = false;
        if (!C0010a.m95a()) {
        }
        this.f329a.f260l.cancel(true);
        this.f329a.getWindow().clearFlags(128);
    }
}
