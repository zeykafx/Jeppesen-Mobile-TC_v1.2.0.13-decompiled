package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0118p;
import java.io.File;
import java.util.HashMap;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bk */
public class AsyncTaskC0054bk extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f344a;

    private AsyncTaskC0054bk(UpdateActivity updateActivity) {
        this.f344a = updateActivity;
    }

    /* synthetic */ AsyncTaskC0054bk(UpdateActivity updateActivity, C0040ax axVar) {
        this(updateActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        try {
            HashMap hashMap = new HashMap();
            for (C0011b bVar : C0112j.m430a()) {
                hashMap.put(bVar.mo65i().toUpperCase(), bVar);
            }
            File[] f = C0118p.m477f(MobileTC.m77c().toString(), "*.*");
            if (!(f == null || f.length == 0)) {
                for (File file : f) {
                    if (!hashMap.containsKey(file.getName().toUpperCase()) && file.exists()) {
                        Log.d(UpdateActivity.f232c, "deleting " + file.getAbsolutePath());
                        file.delete();
                    }
                }
            }
        } catch (Exception e) {
            Log.w(UpdateActivity.f232c, e.getMessage());
            MobileTC.m70a(this.f344a, e.getMessage());
        }
        return null;
    }
}
