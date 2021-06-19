package com.jeppesen.android.p005tc.service;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.activity.UpdateActivity;
import com.jeppesen.android.util.C0108f;
import com.jeppesen.android.util.C0115m;
import java.io.File;
import java.util.ArrayList;

/* renamed from: com.jeppesen.android.tc.service.TailoredCoveragesService */
public class TailoredCoveragesService extends Service {

    /* renamed from: c */
    private static final String f400c = TailoredCoveragesService.class.getSimpleName();

    /* renamed from: d */
    private static String f401d = MobileTC.m75b();

    /* renamed from: a */
    private Looper f402a;

    /* renamed from: b */
    private HandlerC0101b f403b;

    /* access modifiers changed from: private */
    /* renamed from: d */
    public static void m366d() {
        String c = C0108f.m393c(MobileTC.m377q());
        File file = new File(f401d + File.separatorChar + "charts.bin");
        File file2 = new File(f401d + File.separatorChar + "vfrcharts.bin");
        ArrayList arrayList = new ArrayList();
        arrayList.add(c);
        if (file.exists()) {
            arrayList.add("chartsbin" + file.length());
        }
        if (file2.exists()) {
            arrayList.add("vfrchartsbin" + file2.length());
        }
        try {
            String a = C0108f.m390a(arrayList);
            arrayList.add("elrey!");
            C0115m.m449a(a, C0108f.m390a(arrayList), MobileTC.m377q());
        } catch (Exception e) {
            Log.e(f400c, e.toString());
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public Notification.Builder mo362a() {
        Notification.Builder builder = new Notification.Builder(this);
        builder.setOngoing(true);
        builder.setSmallIcon(R.drawable.notification_icon);
        builder.setWhen(System.currentTimeMillis());
        builder.setContentIntent(PendingIntent.getActivity(getApplicationContext(), 0, new Intent(getApplicationContext(), UpdateActivity.class), 134217728));
        builder.setContentTitle(getString(R.string.update_status_notification_title));
        return builder;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        HandlerThread handlerThread = new HandlerThread("ServiceStartArguments", 10);
        handlerThread.start();
        this.f402a = handlerThread.getLooper();
        this.f403b = new HandlerC0101b(this, this.f402a);
    }

    public void onDestroy() {
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle bundleExtra = intent.getBundleExtra("com.jeppesen.android.tc.service.TailoredCoveragesService_Bundle");
        Message obtainMessage = this.f403b.obtainMessage();
        obtainMessage.arg1 = i2;
        obtainMessage.setData(bundleExtra);
        this.f403b.sendMessage(obtainMessage);
        return 1;
    }
}
