package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.util.C0107e;

public class NextChartIssueTextViewPreference extends Preference {
    public NextChartIssueTextViewPreference(Context context) {
        super(context);
    }

    public NextChartIssueTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NextChartIssueTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(16908304);
        int c = C0005a.m34c();
        if (c < 0) {
            textView.setText((CharSequence) null);
        } else {
            textView.setText(C0107e.m383a((double) c));
        }
    }
}
