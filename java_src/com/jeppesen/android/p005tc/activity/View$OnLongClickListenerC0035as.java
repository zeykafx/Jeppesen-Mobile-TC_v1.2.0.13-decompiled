package com.jeppesen.android.p005tc.activity;

import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0111i;
import com.jeppesen.jeppview.jtca.data.Chart;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.as */
public class View$OnLongClickListenerC0035as implements View.OnLongClickListener {

    /* renamed from: a */
    final /* synthetic */ C0034ar f323a;

    View$OnLongClickListenerC0035as(C0034ar arVar) {
        this.f323a = arVar;
    }

    public boolean onLongClick(View view) {
        int i;
        int i2;
        Log.d(C0034ar.f319a, "onLongClick " + view.getTag());
        Chart chart = (Chart) view.getTag();
        View inflate = ((LayoutInflater) this.f323a.f321c.getSystemService("layout_inflater")).inflate(R.layout.scrubber_procedure_popup, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.sidescrubber_procedure_text)).setText(chart.mo472b());
        if (C0111i.m421c(chart)) {
            inflate.findViewById(R.id.sidescrubber_procedure_fav).setVisibility(0);
            inflate.findViewById(R.id.sidescrubber_tooltip_layout).setBackgroundResource(R.drawable.scrubber_favtooltip_glow);
            i = 330;
            i2 = -322;
        } else {
            i = 270;
            i2 = -263;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, i, 70, true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchable(false);
        popupWindow.showAsDropDown(view, i2, view instanceof TextView ? -47 : -55);
        return true;
    }
}
