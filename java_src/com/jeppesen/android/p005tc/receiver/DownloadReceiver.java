package com.jeppesen.android.p005tc.receiver;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import com.jeppesen.android.p005tc.activity.UpdateActivity;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.android.p005tc.service.ManualsService;
import com.jeppesen.android.p005tc.service.TailoredCoveragesService;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0117o;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.receiver.DownloadReceiver */
public class DownloadReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f395a = DownloadReceiver.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        boolean z;
        String action = intent.getAction();
        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(action)) {
            DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
            long longExtra = intent.getLongExtra("extra_download_id", 0);
            List a = C0112j.m430a();
            int i = 0;
            while (true) {
                if (i >= a.size()) {
                    z = false;
                    break;
                } else if (((C0011b) a.get(i)).mo64h() == longExtra) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            List a2 = C0117o.m462a();
            boolean z2 = false;
            for (int i2 = 0; i2 < a2.size(); i2++) {
                if (((C0012c) a2.get(i2)).mo90h() == longExtra) {
                    z2 = true;
                }
            }
            if (z) {
                DownloadManager.Query query = new DownloadManager.Query();
                query.setFilterById(longExtra);
                Cursor query2 = downloadManager.query(query);
                if (query2.moveToFirst()) {
                    int i3 = query2.getInt(query2.getColumnIndex("status"));
                    String string = query2.getString(query2.getColumnIndex("local_filename"));
                    if (8 == i3) {
                        Intent intent2 = new Intent(context, ManualsService.class);
                        Bundle bundle = new Bundle();
                        bundle.putString("com.jeppesen.android.tc.service.ManualsService_FileName", string);
                        bundle.putLong("com.jeppesen.android.tc.service.ManualsService_DownloadId", longExtra);
                        intent2.putExtra("com.jeppesen.android.tc.service.ManualsService_Bundle", bundle);
                        context.startService(intent2);
                    }
                }
                query2.close();
            } else if (z2) {
                DownloadManager.Query query3 = new DownloadManager.Query();
                query3.setFilterById(longExtra);
                Cursor query4 = downloadManager.query(query3);
                if (query4.moveToFirst()) {
                    int columnIndex = query4.getColumnIndex("status");
                    int columnIndex2 = query4.getColumnIndex("local_filename");
                    if (8 == query4.getInt(columnIndex)) {
                        String string2 = query4.getString(columnIndex2);
                        Intent intent3 = new Intent(context, TailoredCoveragesService.class);
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("com.jeppesen.android.tc.service.TailoredCoveragesService_FileName", string2);
                        bundle2.putLong("com.jeppesen.android.tc.service.TailoredCoveragesService_DownloadId", longExtra);
                        intent3.putExtra("com.jeppesen.android.tc.service.TailoredCoveragesService_Bundle", bundle2);
                        context.startService(intent3);
                    }
                    query4.close();
                }
            }
        } else if ("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED".equals(action)) {
            Intent intent4 = new Intent(context, UpdateActivity.class);
            intent4.setFlags(268435456);
            context.startActivity(intent4);
        }
    }
}
