package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.jeppesen.android.p002a.C0002a;

public class SiteKeyTextViewPreference extends Preference {
    public SiteKeyTextViewPreference(Context context) {
        super(context);
    }

    public SiteKeyTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SiteKeyTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(16908304);
        if (C0002a.m7b()) {
            textView.setText(C0002a.m3a().mo5b());
        } else {
            textView.setText("(not activated)");
        }
    }
}
