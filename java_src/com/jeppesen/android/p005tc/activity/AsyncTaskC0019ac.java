package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.util.C0112j;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ac */
class AsyncTaskC0019ac extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f296a;

    private AsyncTaskC0019ac(ChartDisplayActivity chartDisplayActivity) {
        this.f296a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0019ac(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List doInBackground(Void... voidArr) {
        List<C0011b> a = C0112j.m430a();
        ArrayList arrayList = new ArrayList();
        for (C0011b bVar : a) {
            if (bVar.mo66j() && bVar.mo52a() && !bVar.mo65i().toUpperCase().endsWith(".ZIP")) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(List list) {
        ((TextView) this.f296a.f157J.findViewById(R.id.manualsHeader)).setText(this.f296a.getString(R.string.manualsTitle));
        C0031ao aoVar = new C0031ao(this.f296a.getBaseContext(), R.layout.manualslist_item, R.id.manualTypeValue, C0031ao.m325a(list));
        this.f296a.f210p = (ListView) this.f296a.f157J.findViewById(R.id.manualslist_list_view);
        this.f296a.f210p.setAdapter((ListAdapter) aoVar);
        if (list == null || list.size() < 1) {
            if (!this.f296a.f155H.isShowing()) {
                this.f296a.f155H.showAsDropDown(this.f296a.f156I, 2, 0);
                ChartDisplayActivity.m192a(this.f296a, this.f296a.f155H, 350, this.f296a.f156I);
            }
        } else if (!this.f296a.f154G.isShowing()) {
            this.f296a.f154G.showAsDropDown(this.f296a.f156I, 2, 0);
            ChartDisplayActivity.m192a(this.f296a, this.f296a.f154G, 350, this.f296a.f156I);
        }
    }
}
