package com.jeppesen.android.p005tc.service;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.service.ManualsService */
public class ManualsService extends Service {

    /* renamed from: a */
    static final List f396a = new ArrayList();

    /* renamed from: d */
    private static final String f397d = ManualsService.class.getSimpleName();

    /* renamed from: b */
    private Looper f398b;

    /* renamed from: c */
    private HandlerC0100a f399c;

    /* renamed from: a */
    public static boolean m362a() {
        return f396a.size() > 0;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        HandlerThread handlerThread = new HandlerThread("ServiceStartArguments", 10);
        handlerThread.start();
        this.f398b = handlerThread.getLooper();
        this.f399c = new HandlerC0100a(this, this.f398b);
    }

    public void onDestroy() {
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle bundleExtra = intent.getBundleExtra("com.jeppesen.android.tc.service.ManualsService_Bundle");
        Message obtainMessage = this.f399c.obtainMessage();
        obtainMessage.arg1 = i2;
        obtainMessage.setData(bundleExtra);
        this.f399c.sendMessage(obtainMessage);
        return 1;
    }
}
