package com.jeppesen.android.p005tc.activity;

import android.app.DownloadManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.util.C0107e;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0115m;
import java.io.File;
import java.util.HashMap;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bm */
public class AsyncTaskC0056bm extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f346a;

    private AsyncTaskC0056bm(UpdateActivity updateActivity) {
        this.f346a = updateActivity;
    }

    /* synthetic */ AsyncTaskC0056bm(UpdateActivity updateActivity, C0040ax axVar) {
        this(updateActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public C0011b doInBackground(C0011b... bVarArr) {
        C0011b bVar = bVarArr[0];
        try {
            HashMap a = C0010a.m92a(this.f346a.getBaseContext());
            a.put(C0010a.f70c, String.valueOf(bVar.mo59d()));
            a.put(C0010a.f73f, bVar.mo61e());
            a.put(C0010a.f81n, String.valueOf(3600));
            bVar.mo55b(C0010a.m104c(a));
        } catch (Exception e) {
            Log.w(UpdateActivity.f232c, e.getMessage());
            MobileTC.m70a(this.f346a, e.getMessage());
        }
        return bVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(C0011b bVar) {
        if (bVar != null && bVar.mo63g() != null && bVar.mo63g().length() > 1) {
            Uri parse = Uri.parse(bVar.mo63g());
            DownloadManager downloadManager = (DownloadManager) this.f346a.getSystemService("download");
            File file = new File(this.f346a.f238A.getAbsolutePath() + File.separatorChar + bVar.mo65i());
            if (file.exists()) {
                file.delete();
            }
            long enqueue = downloadManager.enqueue(new DownloadManager.Request(parse).setAllowedNetworkTypes(3).setTitle(bVar.mo53b()).setDescription("JeppTC Manuals").setDestinationUri(Uri.fromFile(file)).setVisibleInDownloadsUi(true));
            bVar.mo49a(enqueue);
            this.f346a.f252O.add(String.valueOf(enqueue));
            C0112j.m432a(bVar, true);
            C0115m.m449a("manualsLastUpdate", C0107e.m382a(), this.f346a.getApplicationContext());
        }
    }
}
