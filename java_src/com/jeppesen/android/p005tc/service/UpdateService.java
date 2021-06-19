package com.jeppesen.android.p005tc.service;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.p003b.C0004b;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.activity.UpdateActivity;
import com.jeppesen.jeppview.jtca.EnumC0131b;
import com.jeppesen.jeppview.jtca.data.JeppViewServerInfo;

/* renamed from: com.jeppesen.android.tc.service.UpdateService */
public class UpdateService extends IntentService {

    /* renamed from: a */
    public static final int f404a = -1;

    /* renamed from: b */
    public static final int f405b = 0;

    /* renamed from: c */
    public static final int f406c = 1;

    /* renamed from: d */
    public static final int f407d = 2;

    /* renamed from: e */
    public static final int f408e = 3;

    /* renamed from: f */
    public static final int f409f = 4;

    /* renamed from: g */
    public static final int f410g = 5;

    /* renamed from: h */
    public static final int f411h = 6;

    /* renamed from: i */
    public static final int f412i = 7;

    /* renamed from: j */
    public static final int f413j = 8;

    /* renamed from: k */
    public static final int f414k = 9;

    /* renamed from: l */
    public static final int f415l = 10;

    /* renamed from: m */
    public static final int f416m = 11;

    /* renamed from: n */
    public static final int f417n = 12;

    /* renamed from: o */
    public static final int f418o = -10;

    /* renamed from: p */
    public static final int f419p = -12;

    /* renamed from: q */
    public static final int f420q = -18;

    /* renamed from: r */
    public static final int f421r = -19;

    /* renamed from: s */
    public static final int f422s = -20;

    /* renamed from: t */
    public static final int f423t = -50;

    /* renamed from: w */
    private static final String f424w = UpdateService.class.getSimpleName();

    /* renamed from: A */
    private C0004b f425A;

    /* renamed from: B */
    private EnumC0131b f426B;

    /* renamed from: C */
    private final IBinder f427C = new BinderC0102c(this);

    /* renamed from: u */
    long f428u = 0;

    /* renamed from: v */
    long f429v = 0;

    /* renamed from: x */
    private int f430x = -1;

    /* renamed from: y */
    private String f431y = null;

    /* renamed from: z */
    private String[] f432z = null;

    public UpdateService() {
        super("UpdateServiceWorkerThread");
    }

    /* renamed from: a */
    public int mo367a() {
        if (this.f430x == 6) {
            this.f430x = C0005a.m40g() == 0 ? this.f430x : 7;
        }
        return this.f430x;
    }

    /* renamed from: b */
    public String mo368b() {
        return this.f431y;
    }

    /* renamed from: c */
    public int mo369c() {
        if (this.f428u == 0) {
            this.f428u = C0005a.m40g();
        }
        this.f429v = C0005a.m41h();
        if (this.f428u == 0) {
            return 0;
        }
        double d = (((double) this.f429v) / ((double) this.f428u)) * 100.0d;
        if (d <= -2.147483648E9d || d >= 2.147483647E9d) {
            return 0;
        }
        return (int) d;
    }

    /* renamed from: d */
    public int mo370d() {
        if (this.f428u == 0) {
            this.f428u = C0005a.m40g();
        }
        long j = this.f428u / 1024;
        if (j <= -2147483648L || j >= 2147483647L) {
            return 0;
        }
        return (int) j;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: e */
    public Notification.Builder mo371e() {
        Notification.Builder builder = new Notification.Builder(this);
        builder.setOngoing(true);
        builder.setSmallIcon(R.drawable.notification_icon);
        builder.setWhen(System.currentTimeMillis());
        builder.setContentIntent(PendingIntent.getActivity(getApplicationContext(), 0, new Intent(getApplicationContext(), UpdateActivity.class), 134217728));
        builder.setContentTitle(getString(R.string.update_status_notification_title));
        return builder;
    }

    public IBinder onBind(Intent intent) {
        Log.d(f424w, "onBind() " + intent);
        Log.d(f424w, "onBind() returning " + this.f427C);
        return this.f427C;
    }

    public void onDestroy() {
        Log.d(f424w, "onDestroy()");
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        boolean z;
        boolean z2;
        Log.d(f424w, "onHandleIntent()");
        this.f430x = 0;
        this.f431y = null;
        C0003a a = C0002a.m3a();
        String a2 = a.mo3a();
        String b = a.mo5b();
        boolean booleanExtra = intent.getBooleanExtra("com.jeppesen.android.tc.service.UpdateService_NeedToResume", false);
        Log.d(f424w, "Need to resume? " + booleanExtra);
        if (booleanExtra) {
            boolean j = C0005a.m43j();
            if (!j) {
                z2 = j;
                z = C0005a.m45l();
            } else {
                z2 = j;
                z = false;
            }
        } else {
            z = false;
            z2 = false;
        }
        int identityHashCode = System.identityHashCode(this);
        Log.d(f424w, "UpdateService.this is " + identityHashCode);
        Notification.Builder e = mo371e();
        startForeground(identityHashCode, e.getNotification());
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (z) {
            try {
                Log.d(f424w, "Resuming unpacking");
                this.f430x = 9;
                e.setContentText(getString(R.string.update_status_notification_merging));
                notificationManager.notify(identityHashCode, e.getNotification());
                try {
                    if (C0005a.m39f() != 0) {
                        Log.e(f424w, "Error merging the downloadfile.");
                        this.f430x = -12;
                        return;
                    }
                    this.f430x = 10;
                    e.setContentText(getString(R.string.update_status_update_complete));
                    e.setAutoCancel(true);
                    notificationManager.notify(identityHashCode, e.getNotification());
                    notificationManager.cancel(identityHashCode);
                } catch (OutOfMemoryError e2) {
                    Log.e("JNI Error", "OutOfMemoryError in JNI code in applyUpdateChartsBin.");
                    this.f430x = -50;
                    notificationManager.cancel(identityHashCode);
                }
            } finally {
                notificationManager.cancel(identityHashCode);
            }
        } else {
            this.f430x = 3;
            this.f432z = C0005a.m30a();
            if (this.f432z == null || this.f432z.length == 0) {
                this.f430x = -10;
                notificationManager.cancel(identityHashCode);
                return;
            }
            this.f430x = 4;
            try {
                this.f425A = C0005a.m23a(this.f432z);
                if (this.f425A.mo7a() == null || this.f425A.mo7a().equals("")) {
                    this.f430x = -10;
                    notificationManager.cancel(identityHashCode);
                } else if (z2) {
                    this.f430x = 7;
                    e.setContentText(getString(R.string.update_status_downloading));
                    notificationManager.notify(identityHashCode, e.getNotification());
                    try {
                        if (C0005a.m25a(a2, b, this.f425A.mo7a(), this.f425A.mo10b()) != null) {
                            this.f430x = 8;
                            notificationManager.cancel(identityHashCode);
                            return;
                        }
                        this.f430x = 9;
                        e.setContentText(getString(R.string.update_status_notification_merging));
                        notificationManager.notify(identityHashCode, e.getNotification());
                        try {
                            if (C0005a.m39f() != 0) {
                                Log.e(f424w, "Error merging the download file.");
                                this.f430x = -12;
                                notificationManager.cancel(identityHashCode);
                                return;
                            }
                            this.f430x = 10;
                            e.setContentText(getString(R.string.update_status_update_complete));
                            e.setAutoCancel(true);
                            notificationManager.notify(identityHashCode, e.getNotification());
                        } catch (OutOfMemoryError e3) {
                            Log.e("JNI Error", "OutOfMemoryError in JNI code in applyUpdateChartsBin.");
                            this.f430x = -50;
                        }
                    } catch (OutOfMemoryError e4) {
                        Log.e("JNI Error", "OutOfMemoryError in JNI code in resumeTermChartDownload.");
                        this.f430x = -50;
                    }
                } else {
                    this.f430x = 5;
                    try {
                        int b2 = C0005a.m31b();
                        String d = C0005a.m36d();
                        if (C0005a.m29a(b2)) {
                            b2 = 3333333;
                            d = " ";
                            C0003a a3 = C0002a.m3a();
                            C0002a.m13f();
                            C0002a.m5a(a3.mo3a(), a3.mo5b());
                        }
                        if (d == null) {
                            d = "";
                        }
                        JeppViewServerInfo a4 = C0005a.m24a(d, b2, a2, b, this.f425A.mo7a(), this.f425A.mo10b());
                        int a5 = a4.mo499a();
                        String b3 = a4.mo502b();
                        Log.d(f424w, "state is: " + a5);
                        if (a5 < 0) {
                            switch (a5) {
                                case f422s /*{ENCODED_INT: -20}*/:
                                    Log.e(f424w, b3);
                                    if (b3.equalsIgnoreCase("Poor Internet connection.  Please try again.")) {
                                        this.f430x = -19;
                                        return;
                                    }
                                    this.f430x = -20;
                                    this.f431y = b3;
                                    return;
                                case f404a /*{ENCODED_INT: -1}*/:
                                    Log.e(f424w, "Error creating a C socket.");
                                    this.f430x = -18;
                                    return;
                                default:
                                    this.f430x = -18;
                                    return;
                            }
                        } else {
                            this.f426B = EnumC0131b.values()[a5];
                            if (this.f426B == EnumC0131b.TC_CURRENT) {
                                this.f430x = 12;
                                return;
                            }
                            this.f430x = 6;
                            try {
                                e.setContentText(getString(R.string.update_status_downloading));
                                notificationManager.notify(identityHashCode, e.getNotification());
                                if (C0005a.m38e() != null) {
                                    this.f430x = 8;
                                    return;
                                }
                                try {
                                    this.f430x = 9;
                                    e.setContentText(getString(R.string.update_status_notification_merging));
                                    notificationManager.notify(identityHashCode, e.getNotification());
                                    try {
                                        if (C0005a.m39f() != 0) {
                                            Log.e(f424w, "Error merging the download file.");
                                            this.f430x = -12;
                                            return;
                                        }
                                        this.f430x = 10;
                                        e.setContentText(getString(R.string.update_status_update_complete));
                                        e.setAutoCancel(true);
                                        notificationManager.notify(identityHashCode, e.getNotification());
                                        notificationManager.cancel(identityHashCode);
                                        Log.d(f424w, "finished");
                                    } catch (OutOfMemoryError e5) {
                                        Log.e("JNI Error", "OutOfMemoryError in JNI code in applyUpdateChartsBin.");
                                        this.f430x = -50;
                                        notificationManager.cancel(identityHashCode);
                                    }
                                } finally {
                                    notificationManager.cancel(identityHashCode);
                                }
                            } catch (OutOfMemoryError e6) {
                                Log.e("JNI Error", "OutOfMemoryError in JNI code in getTermChartDownload.");
                                this.f430x = -50;
                            }
                        }
                    } catch (OutOfMemoryError e7) {
                        Log.e("JNI Error", "OutOfMemoryError in JNI code in getJeppViewServerInfo or getCoverageCodes.");
                        this.f430x = -50;
                    }
                }
            } catch (OutOfMemoryError e8) {
                Log.e("JNI Error", "OutOfMemoryError in JNI code in testConnectToHost.");
                this.f430x = -50;
            }
        }
    }

    public void onRebind(Intent intent) {
        Log.d(f424w, "onRebind " + intent);
        super.onRebind(intent);
    }

    public boolean onUnbind(Intent intent) {
        Log.d(f424w, "onUnbind " + intent);
        return super.onUnbind(intent);
    }
}
