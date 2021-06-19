package com.jeppesen.android.p005tc;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import com.jeppesen.android.p005tc.service.ManualsService;
import com.jeppesen.android.util.C0118p;
import java.io.File;

/* renamed from: com.jeppesen.android.tc.d */
class AsyncTaskC0087d extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ MobileTC f389a;

    private AsyncTaskC0087d(MobileTC mobileTC) {
        this.f389a = mobileTC;
    }

    /* synthetic */ AsyncTaskC0087d(MobileTC mobileTC, RunnableC0085b bVar) {
        this(mobileTC);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(String... strArr) {
        File[] f = C0118p.m477f(strArr[0], "*.ZIP");
        if (f == null || f.length <= 0) {
            return null;
        }
        for (File file : f) {
            String name = file.getName();
            long length = file.length();
            Intent intent = new Intent(this.f389a.getBaseContext(), ManualsService.class);
            Bundle bundle = new Bundle();
            bundle.putString("com.jeppesen.android.tc.service.ManualsService_FileName", strArr[0] + File.separatorChar + name);
            bundle.putLong("com.jeppesen.android.tc.service.ManualsService_FileSize", length);
            bundle.putLong("com.jeppesen.android.tc.service.ManualsService_DownloadId", -1);
            intent.putExtra("com.jeppesen.android.tc.service.ManualsService_Bundle", bundle);
            this.f389a.getBaseContext().startService(intent);
        }
        return null;
    }
}
