package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.NOTAMHandler;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ad */
class AsyncTaskC0020ad extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f297a;

    private AsyncTaskC0020ad(ChartDisplayActivity chartDisplayActivity) {
        this.f297a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0020ad(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List doInBackground(String... strArr) {
        List b = NOTAMHandler.m542b(strArr[0]);
        Log.d(ChartDisplayActivity.m214l(), "got notams");
        return b;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(List list) {
        TextView textView = (TextView) this.f297a.notamListView.findViewById(R.id.notamsHeader);
        String str = "";
        if (ChartDisplayActivity.m207e(this.f297a) != null) {
            str = ChartDisplayActivity.m207e(this.f297a).mo469a();
        } else if (ChartDisplayActivity.m209g(this.f297a) != null) {
            str = ChartDisplayActivity.m209g(this.f297a).mo451a();
        }
        textView.setText(str + " " + this.f297a.getString(R.string.notams));
        C0032ap apVar = new C0032ap(this.f297a.getApplicationContext(), R.layout.notamslist_item, R.id.notamTypeValue, list);
        this.f297a.f201g = (ListView) this.f297a.notamListView.findViewById(R.id.notamslist_list_view);
        this.f297a.f201g.setAdapter((ListAdapter) apVar);
        this.f297a.f201g.setTextFilterEnabled(false);
        if (list == null || list.size() < 1) {
            if (!this.f297a.notamPopupWindow.isShowing()) {
                ((TextView) this.f297a.noNotamsView.findViewById(R.id.NoNotams)).setText(str + " " + this.f297a.getString(R.string.notams));
                this.f297a.notamPopupWindow.showAsDropDown(this.f297a.notamIcon, 2, 0);
                ChartDisplayActivity.m192a(this.f297a, this.f297a.notamPopupWindow, 350, this.f297a.notamIcon);
            }
        } else if (!this.f297a.popupWindow2.isShowing()) {
            this.f297a.popupWindow2.showAsDropDown(this.f297a.notamIcon, 2, 0);
            ChartDisplayActivity.m192a(this.f297a, this.f297a.popupWindow2, 380, this.f297a.notamIcon);
        }
    }
}
