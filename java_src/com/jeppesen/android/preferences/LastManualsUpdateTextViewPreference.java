package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.jeppesen.android.util.C0115m;

public class LastManualsUpdateTextViewPreference extends Preference {

    /* renamed from: a */
    private static Context f49a;

    public LastManualsUpdateTextViewPreference(Context context) {
        super(context);
        f49a = context.getApplicationContext();
    }

    public LastManualsUpdateTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f49a = context.getApplicationContext();
    }

    public LastManualsUpdateTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        f49a = context.getApplicationContext();
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        ((TextView) view.findViewById(16908304)).setText(C0115m.m444a("manualsLastUpdate", f49a));
    }
}
