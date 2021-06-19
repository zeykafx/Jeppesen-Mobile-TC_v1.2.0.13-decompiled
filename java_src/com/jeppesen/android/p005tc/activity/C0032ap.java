package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.data.Notam;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.ap */
public class C0032ap extends ArrayAdapter {

    /* renamed from: a */
    private static final String f313a = C0032ap.class.getSimpleName();

    public C0032ap(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return super.getDropDownView(i, view, viewGroup);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        Notam notam = (Notam) getItem(i);
        View findViewById = view.findViewById(R.id.notamTypeValue);
        if (findViewById != null) {
            findViewById.setTag(notam);
            ((TextView) findViewById).setText((notam.mo525j() == null || notam.mo525j().length() == 0) ? notam.mo508a() ? notam.mo518e() + " (VFR)" : notam.mo518e() : notam.mo508a() ? notam.mo518e() + " (" + notam.mo525j() + ",VFR)" : notam.mo518e() + " (" + notam.mo525j() + ")");
        }
        View findViewById2 = view.findViewById(R.id.notamEffectivityValue);
        if (findViewById2 != null) {
            ((TextView) findViewById2).setText(notam.mo511b() ? getContext().getString(R.string.temporary) : getContext().getString(R.string.permanent));
        }
        View findViewById3 = view.findViewById(R.id.notamBeginDateValue);
        if (findViewById3 != null) {
            ((TextView) findViewById3).setText(notam.mo514c() ? getContext().getString(R.string.immediately) : (notam.mo522g() == null || notam.mo522g().length() == 0) ? getContext().getString(R.string.no_begin_date) : notam.mo522g());
        }
        View findViewById4 = view.findViewById(R.id.notamEndDateValue);
        if (findViewById4 != null) {
            ((TextView) findViewById4).setText(notam.mo517d() ? getContext().getString(R.string.until_further_notice) : (notam.mo520f() == null || notam.mo520f().length() == 0) ? getContext().getString(R.string.no_end_date) : notam.mo520f());
        }
        View findViewById5 = view.findViewById(R.id.notamTextValue);
        if (findViewById5 != null) {
            ((TextView) findViewById5).setText(notam.mo524i());
        }
        return view;
    }
}
