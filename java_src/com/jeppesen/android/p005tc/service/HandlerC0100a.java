package com.jeppesen.android.p005tc.service;

import android.app.DownloadManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.util.AsyncTaskC0114l;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0118p;
import com.jeppesen.jeppview.jtca.data.EmbeddedFileInfo;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.service.a */
final class HandlerC0100a extends Handler {

    /* renamed from: a */
    final /* synthetic */ ManualsService f433a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public HandlerC0100a(ManualsService manualsService, Looper looper) {
        super(looper);
        this.f433a = manualsService;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0088, code lost:
        r1 = (com.jeppesen.android.p005tc.p006a.C0011b) r9.get(r0);
     */
    public void handleMessage(Message message) {
        int i = 0;
        Bundle data = message.getData();
        String string = data.getString("com.jeppesen.android.tc.service.ManualsService_FileName");
        String substring = string.substring(string.lastIndexOf(File.separatorChar) + 1, string.length());
        long j = data.getLong("com.jeppesen.android.tc.service.ManualsService_DownloadId");
        ManualsService.f396a.add(Long.valueOf(j));
        try {
            long j2 = data.getLong("com.jeppesen.android.tc.service.ManualsService_FileSize");
            Log.d(ManualsService.f397d, "ManualsService processing " + string);
            List a = C0112j.m430a();
            C0011b bVar = null;
            while (true) {
                if (i >= a.size()) {
                    break;
                }
                try {
                    if (((C0011b) a.get(i)).mo64h() != j && (!((C0011b) a.get(i)).mo65i().equals(substring) || ((C0011b) a.get(i)).mo67k() != j2)) {
                        i++;
                    }
                } catch (NullPointerException e) {
                    Log.e(ManualsService.f397d, "ManualsService NPE: " + e.getMessage());
                    this.f433a.stopSelf(message.arg1);
                    ManualsService.f396a.remove(Long.valueOf(j));
                    return;
                }
            }
            if (bVar == null) {
                Log.e(ManualsService.f397d, "targetedDocRecord wasn't found in storedManualsInfo?");
                this.f433a.stopSelf(message.arg1);
                return;
            }
            if (string.toUpperCase().endsWith(".ZIP")) {
                if (C0118p.m465a(string, "", MobileTC.m77c().getAbsolutePath()) < 0) {
                    Log.e(ManualsService.f397d, "Error unpacking file: " + string);
                    this.f433a.stopSelf(message.arg1);
                    ManualsService.f396a.remove(Long.valueOf(j));
                    return;
                }
                EmbeddedFileInfo b = C0118p.m471b(string);
                if (b == null) {
                    Log.e(ManualsService.f397d, "Had a problem getting the embedded file name and file zize from: " + string);
                    this.f433a.stopSelf(message.arg1);
                    ManualsService.f396a.remove(Long.valueOf(j));
                    return;
                }
                String a2 = b.mo490a();
                long b2 = b.mo493b();
                bVar.mo60d(a2);
                bVar.mo54b(b2);
                C0112j.m432a(bVar, true);
                if (j2 == 0) {
                    ((DownloadManager) this.f433a.getApplicationContext().getSystemService("download")).remove(j);
                } else {
                    new File(string).delete();
                }
            }
            Iterator it = a.iterator();
            while (it.hasNext()) {
                C0011b bVar2 = (C0011b) it.next();
                if (bVar2.mo53b().equals(bVar.mo53b()) && !bVar2.mo62f().equals(bVar.mo62f())) {
                    Log.d(ManualsService.f397d, "Removing record " + bVar2);
                    it.remove();
                }
            }
            C0112j.m433a(a);
            new AsyncTaskC0114l().execute(this.f433a.getApplicationContext());
            this.f433a.stopSelf(message.arg1);
            ManualsService.f396a.remove(Long.valueOf(j));
        } finally {
            ManualsService.f396a.remove(Long.valueOf(j));
        }
    }
}
