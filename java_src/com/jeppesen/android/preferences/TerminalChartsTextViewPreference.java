package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;

public class TerminalChartsTextViewPreference extends Preference {
    public TerminalChartsTextViewPreference(Context context) {
        super(context);
    }

    public TerminalChartsTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TerminalChartsTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(16908304);
        if (C0010a.m95a()) {
            textView.setText(getContext().getString(R.string.new_updates_available));
            return;
        }
        textView.setText(getContext().getString(R.string.update_charts_no_update_needed));
        textView.setEnabled(false);
    }
}
