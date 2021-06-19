package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.data.Chart;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ar */
public class C0034ar extends ArrayAdapter {

    /* renamed from: a */
    private static final String f319a = C0034ar.class.getSimpleName();

    /* renamed from: b */
    private Chart f320b;

    /* renamed from: c */
    private Context f321c;

    /* renamed from: d */
    private View.OnLongClickListener f322d = new View$OnLongClickListenerC0035as(this);

    public C0034ar(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
        this.f321c = context;
    }

    /* renamed from: a */
    public void mo249a(Chart chart) {
        this.f320b = chart;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
            view.setOnLongClickListener(this.f322d);
        }
        TextView textView = (TextView) view.findViewById(R.id.sidescrubber_itemtext);
        textView.setOnLongClickListener(this.f322d);
        Chart chart = (Chart) getItem(i);
        textView.setTag(chart);
        view.setTag(chart);
        if (!chart.equals(this.f320b)) {
            view.setBackgroundResource(0);
        } else {
            view.setBackgroundResource(R.drawable.sidescrubber_whitetab);
        }
        textView.setText(chart.mo474c());
        view.forceLayout();
        return view;
    }
}
