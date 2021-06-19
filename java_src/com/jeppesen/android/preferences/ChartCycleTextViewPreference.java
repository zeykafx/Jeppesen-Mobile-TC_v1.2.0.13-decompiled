package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.util.C0107e;

public class ChartCycleTextViewPreference extends Preference {
    public ChartCycleTextViewPreference(Context context) {
        super(context);
    }

    public ChartCycleTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChartCycleTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(16908304);
        int b = C0005a.m31b();
        if (b < 0) {
            textView.setText((CharSequence) null);
        } else {
            textView.setText(C0107e.m386c((double) b));
        }
    }
}
