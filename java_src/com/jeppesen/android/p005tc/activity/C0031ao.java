package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.util.C0107e;
import com.jeppesen.jeppview.jtca.data.ManualGroupDivider;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ao */
public class C0031ao extends ArrayAdapter {

    /* renamed from: a */
    private static final String f312a = C0031ao.class.getSimpleName();

    public C0031ao(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
    }

    /* renamed from: a */
    public static List m325a(List list) {
        String str;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        if (arrayList.get(0) instanceof ManualGroupDivider) {
            return list;
        }
        String str2 = "";
        int i = 0;
        while (i < arrayList.size()) {
            C0011b bVar = (C0011b) arrayList.get(i);
            if (!str2.equals(bVar.mo69m())) {
                str = bVar.mo69m();
                ManualGroupDivider manualGroupDivider = new ManualGroupDivider();
                manualGroupDivider.mo503e(str);
                arrayList.add(i, manualGroupDivider);
            } else {
                str = str2;
            }
            i++;
            str2 = str;
        }
        return arrayList;
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        Log.d(f312a, "getDropDownView " + i + " " + view + " " + viewGroup);
        return super.getDropDownView(i, view, viewGroup);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.manuallist_launchReaderIcon);
        TextView textView = (TextView) view.findViewById(R.id.manualTypeValue);
        TextView textView2 = (TextView) view.findViewById(R.id.manualDate);
        TextView textView3 = (TextView) view.findViewById(R.id.manuallist_group_title);
        C0011b bVar = (C0011b) getItem(i);
        if (bVar instanceof ManualGroupDivider) {
            textView3.setText(((ManualGroupDivider) bVar).mo504q());
            textView3.setVisibility(0);
            imageView.setVisibility(8);
            textView2.setVisibility(8);
            textView.setVisibility(8);
            view.getLayoutParams().height = -2;
        } else {
            if (imageView != null) {
                imageView.setTag(bVar);
            }
            if (textView != null) {
                textView.setTag(bVar);
                textView.setText(bVar.mo53b());
            }
            if (textView2 != null) {
                textView2.setTag(bVar);
                String e = C0107e.m388e(Double.valueOf(bVar.mo62f()).doubleValue());
                String str = bVar.mo68l().equals(C0010a.f86s) ? "Jeppesen Airway Manual, " : "";
                textView2.setText(str.length() > 0 ? ("" + str) + e : e);
            }
            textView3.setVisibility(8);
            imageView.setVisibility(0);
            textView2.setVisibility(0);
            textView.setVisibility(0);
        }
        view.forceLayout();
        return view;
    }
}
