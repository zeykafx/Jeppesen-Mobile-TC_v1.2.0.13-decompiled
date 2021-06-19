package com.jeppesen.android.p005tc.activity.p007a;

import android.os.AsyncTask;
import android.util.Log;

/* renamed from: com.jeppesen.android.tc.activity.a.b */
class AsyncTaskC0015b extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ C0014a f291a;

    AsyncTaskC0015b(C0014a aVar) {
        this.f291a = aVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        while (this.f291a.f282d) {
            this.f291a.f279a.runOnUiThread(new RunnableC0016c(this, C0014a.m298a(this.f291a)));
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                Log.e(C0014a.m299c(), "Oh No!", e);
            }
        }
        return null;
    }
}
