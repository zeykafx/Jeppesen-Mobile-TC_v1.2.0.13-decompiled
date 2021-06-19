package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.util.C0115m;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.bn */
class AsyncTaskC0057bn extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ UpdateActivity f347a;

    private AsyncTaskC0057bn(UpdateActivity updateActivity) {
        this.f347a = updateActivity;
    }

    /* synthetic */ AsyncTaskC0057bn(UpdateActivity updateActivity, C0040ax axVar) {
        this(updateActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List doInBackground(Void... voidArr) {
        Exception e;
        List list;
        ArrayList arrayList = new ArrayList();
        try {
            list = C0010a.m100b(C0010a.m92a(this.f347a.getBaseContext()));
            try {
                C0010a.m105c(list);
            } catch (Exception e2) {
                e = e2;
                Log.w(UpdateActivity.f232c, e.getMessage());
                this.f347a.runOnUiThread(new RunnableC0058bo(this, e));
                return list;
            }
        } catch (Exception e3) {
            list = arrayList;
            e = e3;
            Log.w(UpdateActivity.f232c, e.getMessage());
            this.f347a.runOnUiThread(new RunnableC0058bo(this, e));
            return list;
        }
        return list;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(List list) {
        Log.d(UpdateActivity.f232c, list.size() + " results");
        this.f347a.f240C = list;
        this.f347a.f274z.setAdapter((ListAdapter) new C0039aw(this.f347a, R.layout.tailoredcoverageslist_update_item, R.id.coverageDescriptionValue, this.f347a.f240C));
        String a = C0115m.m444a("loadedTailoredCoverageId", this.f347a.getApplicationContext());
        if (a == null || a.length() == 0) {
            this.f347a.mo183a(this.f347a.getString(R.string.update_coverages_select));
        } else if (this.f347a.f240C.size() <= 1) {
        } else {
            if (C0010a.m97a(this.f347a.f240C)) {
                this.f347a.mo183a(this.f347a.getString(R.string.update_coverages_need_update));
            } else {
                this.f347a.mo183a(this.f347a.getString(R.string.update_coverages_no_update_needed));
            }
        }
    }
}
