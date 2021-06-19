package com.jeppesen.android.p005tc.activity;

import android.app.DownloadManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.android.util.C0117o;
import java.io.File;
import java.util.HashMap;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bl */
public class AsyncTaskC0055bl extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f345a;

    private AsyncTaskC0055bl(UpdateActivity updateActivity) {
        this.f345a = updateActivity;
    }

    /* synthetic */ AsyncTaskC0055bl(UpdateActivity updateActivity, C0040ax axVar) {
        this(updateActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public C0012c doInBackground(C0012c... cVarArr) {
        C0012c cVar = cVarArr[0];
        try {
            HashMap a = C0010a.m92a(this.f345a.getBaseContext());
            a.put(C0010a.f70c, String.valueOf(cVar.mo84d()));
            a.put(C0010a.f73f, cVar.mo86e());
            a.put(C0010a.f81n, "3600");
            a.put(C0010a.f82o, "true");
            cVar.mo80b(C0010a.m106d(a));
        } catch (Exception e) {
            Log.w(UpdateActivity.f232c, e.getMessage());
            MobileTC.m70a(this.f345a, e.getMessage());
        }
        return cVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(C0012c cVar) {
        if (cVar != null && cVar.mo89g() != null && cVar.mo89g().length() > 1) {
            Uri parse = Uri.parse(cVar.mo89g());
            Log.d(UpdateActivity.f232c, "enqueing " + parse.toString());
            DownloadManager downloadManager = (DownloadManager) this.f345a.getSystemService("download");
            File file = new File(this.f345a.f239B.getAbsolutePath() + File.separatorChar + cVar.mo92j());
            if (file.exists()) {
                file.delete();
            }
            long enqueue = downloadManager.enqueue(new DownloadManager.Request(parse).setAllowedNetworkTypes(3).setTitle(cVar.mo91i()).setDescription(cVar.mo78b()).setDestinationUri(Uri.fromFile(file)).setVisibleInDownloadsUi(true));
            cVar.mo74a(enqueue);
            this.f345a.f252O.add(String.valueOf(enqueue));
            C0117o.m463a(cVar, true);
            C0005a.m26a(cVar.mo94l());
        }
    }
}
