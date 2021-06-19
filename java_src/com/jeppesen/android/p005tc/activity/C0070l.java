package com.jeppesen.android.p005tc.activity;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.jeppesen.android.p005tc.activity.ApplicationPreferencesActivity;

/* renamed from: com.jeppesen.android.tc.activity.l */
class C0070l implements Preference.OnPreferenceChangeListener {

    /* renamed from: a */
    final /* synthetic */ CheckBoxPreference f367a;

    /* renamed from: b */
    final /* synthetic */ ApplicationPreferencesActivity.PreferencesFragment f368b;

    C0070l(ApplicationPreferencesActivity.PreferencesFragment preferencesFragment, CheckBoxPreference checkBoxPreference) {
        this.f368b = preferencesFragment;
        this.f367a = checkBoxPreference;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (obj.toString().equals("true")) {
            this.f367a.notifyDependencyChange(false);
            this.f368b.m182a("custom_user_pass");
        }
        ApplicationPreferencesActivity.m173a();
        return true;
    }
}
