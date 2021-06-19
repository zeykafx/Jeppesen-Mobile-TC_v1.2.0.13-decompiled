package com.jeppesen.android.preferences;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class VersionTextViewPreference extends Preference {

    /* renamed from: a */
    private static final String f50a = VersionTextViewPreference.class.getSimpleName();

    /* renamed from: b */
    private PackageInfo f51b = null;

    public VersionTextViewPreference(Context context) {
        super(context);
        m68a(context);
    }

    public VersionTextViewPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m68a(context);
    }

    public VersionTextViewPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m68a(context);
    }

    /* renamed from: a */
    private void m68a(Context context) {
        try {
            this.f51b = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f50a, "Unable to get package info: ", e);
        }
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        ((TextView) view.findViewById(16908304)).setText(this.f51b.versionName);
    }
}
