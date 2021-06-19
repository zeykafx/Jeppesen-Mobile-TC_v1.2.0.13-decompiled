package com.jeppesen.android.p005tc.activity;

import android.preference.Preference;
import com.jeppesen.android.p005tc.activity.ApplicationPreferencesActivity;
import com.jeppesen.android.p005tc.p006a.C0011b;

/* renamed from: com.jeppesen.android.tc.activity.j */
class C0068j implements Preference.OnPreferenceChangeListener {

    /* renamed from: a */
    final /* synthetic */ ApplicationPreferencesActivity.ManualsFragment f365a;

    C0068j(ApplicationPreferencesActivity.ManualsFragment manualsFragment) {
        this.f365a = manualsFragment;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        for (C0011b bVar : ApplicationPreferencesActivity.f127a) {
            if (bVar.mo53b().equals(preference.getTitle())) {
                bVar.mo51a(!bVar.mo66j());
            }
        }
        return true;
    }
}
