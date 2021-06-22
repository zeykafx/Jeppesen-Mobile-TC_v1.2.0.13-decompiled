package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0111i;
import com.jeppesen.jeppview.jtca.data.Chart;
import com.jeppesen.jeppview.jtca.data.ChartGroupDivider;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ai */
public class C0025ai extends ArrayAdapter {

    /* renamed from: a */
    private static final String f304a = C0025ai.class.getSimpleName();

    /* renamed from: b */
    private static final int f305b = 22;

    public C0025ai(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
    }

    /* renamed from: a */
    public static List m320a(List list) {
        String str;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        if (arrayList.get(0) instanceof ChartGroupDivider) {
            return list;
        }
        String str2 = "";
        int i = 0;
        while (i < arrayList.size()) {
            Chart chart = (Chart) arrayList.get(i);
            if (!str2.equals(chart.mo480f())) {
                str = chart.mo480f();
                ChartGroupDivider chartGroupDivider = new ChartGroupDivider();
                chartGroupDivider.mo488i(str);
                arrayList.add(i, chartGroupDivider);
            } else {
                str = str2;
            }
            i++;
            str2 = str;
        }
        return arrayList;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        TextView textView = (TextView) view.findViewById(R.id.chartlist_group_title);
        ImageView imageView = (ImageView) view.findViewById(R.id.chartlist_favIcon);
        TextView textView2 = (TextView) view.findViewById(R.id.chartlist_procedure);
        TextView textView3 = (TextView) view.findViewById(R.id.chartlist_index);
        Chart chart = (Chart) getItem(i);
        if (chart instanceof ChartGroupDivider) {
            textView.setText(((ChartGroupDivider) chart).mo489j());
            textView.setVisibility(0);
            imageView.setVisibility(8);
            textView2.setVisibility(8);
            textView3.setVisibility(8);
            view.getLayoutParams().height = -2;
        } else {
            imageView.setTag(chart);
            if (C0111i.containsFavChart(chart)) {
                imageView.setImageResource(R.drawable.fav_on);
            } else {
                imageView.setImageResource(R.drawable.fav_off);
            }
            textView2.setTag(chart);
            String b = chart.getChartFileName();
            if (b != null && b.length() > f305b) {
                b = chart.getChartFileName().substring(0, f305b) + "…";
            }
            textView2.setText(b);
            textView3.setTag(chart);
            textView3.setText(chart.mo474c());
            textView.setVisibility(8);
            imageView.setVisibility(0);
            textView2.setVisibility(0);
            textView3.setVisibility(0);
            view.getLayoutParams().height = 60;
        }
        view.forceLayout();
        return view;
    }
}
