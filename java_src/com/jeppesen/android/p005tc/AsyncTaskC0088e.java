package com.jeppesen.android.p005tc;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import com.jeppesen.android.p005tc.service.TailoredCoveragesService;
import com.jeppesen.android.util.C0118p;
import java.io.File;

/* renamed from: com.jeppesen.android.tc.e */
class AsyncTaskC0088e extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ MobileTC f390a;

    private AsyncTaskC0088e(MobileTC mobileTC) {
        this.f390a = mobileTC;
    }

    /* synthetic */ AsyncTaskC0088e(MobileTC mobileTC, RunnableC0085b bVar) {
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
            Intent intent = new Intent(this.f390a.getBaseContext(), TailoredCoveragesService.class);
            Bundle bundle = new Bundle();
            bundle.putString("com.jeppesen.android.tc.service.TailoredCoveragesService_FileName", strArr[0] + File.separatorChar + name);
            bundle.putLong("com.jeppesen.android.tc.service.TailoredCoveragesService_FileSize", length);
            bundle.putLong("com.jeppesen.android.tc.service.TailoredCoveragesService_DownloadId", -1);
            intent.putExtra("com.jeppesen.android.tc.service.TailoredCoveragesService_Bundle", bundle);
            this.f390a.getBaseContext().startService(intent);
        }
        return null;
    }
}
