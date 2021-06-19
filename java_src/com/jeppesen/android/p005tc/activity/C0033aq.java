package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.jeppesen.android.util.C0111i;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.Chart;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.aq */
public class C0033aq extends BaseAdapter {

    /* renamed from: e */
    private static final String f314e = C0033aq.class.getSimpleName();

    /* renamed from: a */
    List f315a = C0111i.m422d(this.f318d.mo451a());

    /* renamed from: b */
    int f316b;

    /* renamed from: c */
    private final Context f317c;

    /* renamed from: d */
    private Airport f318d;

    public C0033aq(Context context, Airport airport) {
        this.f317c = context;
        this.f318d = airport;
        Log.d(f314e, "ScrubberAdapter created");
    }

    /* renamed from: a */
    public void mo244a(List list) {
        this.f315a = list;
    }

    public int getCount() {
        if (this.f315a == null || this.f315a.size() == 0) {
            return 0;
        }
        return this.f315a.size();
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view != null) {
            return (TextView) view;
        }
        Chart chart = (Chart) this.f315a.get(i);
        TextView textView = new TextView(this.f317c);
        textView.setTag(chart);
        textView.setText(chart.mo474c());
        textView.setTextSize(25.0f);
        return textView;
    }
}
