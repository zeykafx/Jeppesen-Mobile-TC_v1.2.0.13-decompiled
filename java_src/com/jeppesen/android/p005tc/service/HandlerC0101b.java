package com.jeppesen.android.p005tc.service;

import android.app.DownloadManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.C0117o;
import java.io.File;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.service.b */
final class HandlerC0101b extends Handler {

    /* renamed from: a */
    final /* synthetic */ TailoredCoveragesService f434a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public HandlerC0101b(TailoredCoveragesService tailoredCoveragesService, Looper looper) {
        super(looper);
        this.f434a = tailoredCoveragesService;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x007f, code lost:
        r3 = (com.jeppesen.android.p005tc.p006a.C0012c) r10.get(r1);
     */
    public void handleMessage(Message message) {
        int i = 0;
        Bundle data = message.getData();
        String string = data.getString("com.jeppesen.android.tc.service.TailoredCoveragesService_FileName");
        String substring = string.substring(string.lastIndexOf(File.separatorChar) + 1, string.length());
        long j = data.getLong("com.jeppesen.android.tc.service.TailoredCoveragesService_DownloadId");
        long j2 = data.getLong("com.jeppesen.android.tc.service.TailoredCoveragesService_FileSize");
        Log.d(TailoredCoveragesService.f400c, "TailoredCoveragesService processing " + string);
        List a = C0117o.m462a();
        C0012c cVar = null;
        int i2 = 0;
        while (true) {
            if (i2 >= a.size()) {
                break;
            }
            try {
                if (((C0012c) a.get(i2)).mo90h() != j && (!((C0012c) a.get(i2)).mo92j().equals(substring) || ((C0012c) a.get(i2)).mo94l() != j2)) {
                    i2++;
                }
            } catch (NullPointerException e) {
                Log.e(TailoredCoveragesService.f400c, "ManualsService NPE: " + e.getMessage());
                this.f434a.stopSelf(message.arg1);
                return;
            }
        }
        if (cVar == null) {
            Log.e(TailoredCoveragesService.f400c, "targetedDocRecord wasn't found in storedCoveragesInfo?");
            this.f434a.stopSelf(message.arg1);
            return;
        }
        if (string.toUpperCase().endsWith(".ZIP")) {
            int identityHashCode = System.identityHashCode(this.f434a);
            Log.d(TailoredCoveragesService.f400c, "TailoredCoveragesService.this is " + identityHashCode);
            Notification.Builder a2 = this.f434a.mo362a();
            this.f434a.startForeground(identityHashCode, a2.getNotification());
            NotificationManager notificationManager = (NotificationManager) this.f434a.getSystemService("notification");
            try {
                C0003a a3 = C0002a.m3a();
                C0002a.m13f();
                C0002a.m5a(a3.mo3a(), a3.mo5b());
                a2.setContentText(this.f434a.getString(R.string.update_status_notification_merging));
                notificationManager.notify(identityHashCode, a2.getNotification());
                if (C0005a.m32b(string) < 0) {
                    Log.e(TailoredCoveragesService.f400c, "Error unpacking file: " + string);
                    this.f434a.stopSelf(message.arg1);
                    return;
                }
                String f = cVar.mo88f();
                if (f != null && f.length() > 0) {
                    i = (int) Float.parseFloat(f);
                }
                C0005a.m33b(i);
                TailoredCoveragesService.m366d();
                if (j2 == 0) {
                    ((DownloadManager) this.f434a.getApplicationContext().getSystemService("download")).remove(j);
                } else {
                    new File(string).delete();
                }
                C0115m.m449a("loadedTailoredCoverageId", cVar.mo91i(), this.f434a.getApplicationContext());
                a2.setContentText(this.f434a.getString(R.string.update_status_update_complete));
                a2.setAutoCancel(true);
                notificationManager.notify(identityHashCode, a2.getNotification());
                notificationManager.cancel(identityHashCode);
            } finally {
                notificationManager.cancel(identityHashCode);
            }
        }
        this.f434a.stopSelf(message.arg1);
    }
}
