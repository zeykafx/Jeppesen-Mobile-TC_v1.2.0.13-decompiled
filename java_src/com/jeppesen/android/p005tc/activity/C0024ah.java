package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0103a;
import com.jeppesen.android.util.C0105c;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.ChartGroupDivider;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ah */
public class C0024ah extends ArrayAdapter {

    /* renamed from: b */
    private static final String f302b = C0024ah.class.getSimpleName();

    /* renamed from: a */
    Airport f303a;

    public C0024ah(Context context, int i, int i2, List list, Airport airport) {
        super(context, i, i2, list);
        this.f303a = airport;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        TextView textView = (TextView) view.findViewById(R.id.chartgroup_name);
        TextView textView2 = (TextView) view.findViewById(R.id.chartgroup_description);
        ImageView imageView = (ImageView) view.findViewById(R.id.chartgroup_right_tick_button);
        ChartGroupDivider chartGroupDivider = (ChartGroupDivider) getItem(i);
        textView.setText(chartGroupDivider.mo489j());
        if (chartGroupDivider.mo489j().equals(C0105c.f450e)) {
            textView2.setText(this.f303a.mo455b());
        } else {
            textView2.setText(C0103a.m378a(chartGroupDivider.mo489j()));
        }
        textView.setTag(chartGroupDivider.mo489j());
        textView2.setTag(chartGroupDivider.mo489j());
        imageView.setTag(chartGroupDivider.mo489j());
        return view;
    }
}
