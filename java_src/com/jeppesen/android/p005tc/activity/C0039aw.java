package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.android.util.C0107e;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.aw */
public class C0039aw extends ArrayAdapter {

    /* renamed from: a */
    private static final String f327a = C0039aw.class.getSimpleName();

    public C0039aw(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        Log.d(f327a, "getDropDownView " + i + " " + view + " " + viewGroup);
        return super.getDropDownView(i, view, viewGroup);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        C0012c cVar = (C0012c) getItem(i);
        ImageView imageView = (ImageView) view.findViewById(R.id.coveragelist_selectfordownload);
        imageView.setTag(cVar);
        if (cVar.mo93k()) {
            imageView.setImageResource(R.drawable.fav_on);
        } else {
            imageView.setImageResource(R.drawable.fav_off);
        }
        imageView.setVisibility(0);
        View findViewById = view.findViewById(R.id.coverageIdValue);
        if (findViewById != null) {
            findViewById.setTag(cVar);
            ((TextView) findViewById).setText(cVar.mo91i());
        }
        View findViewById2 = view.findViewById(R.id.coverageDescriptionValue);
        if (findViewById2 != null) {
            findViewById2.setTag(cVar);
            ((TextView) findViewById2).setText(cVar.mo78b());
        }
        View findViewById3 = view.findViewById(R.id.coverageDate);
        if (findViewById3 != null) {
            findViewById3.setTag(cVar);
            int[] d = C0107e.m387d(Double.valueOf(cVar.mo88f()).doubleValue());
            int i2 = d[0];
            int i3 = d[1];
            ((TextView) findViewById3).setText(i3 + "-" + d[2] + "-" + i2);
        }
        view.forceLayout();
        return view;
    }
}
