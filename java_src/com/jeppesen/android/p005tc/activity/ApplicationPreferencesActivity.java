package com.jeppesen.android.p005tc.activity;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.View;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.preferences.ChartCycleTextViewPreference;
import com.jeppesen.android.util.C0107e;
import com.jeppesen.android.util.C0109g;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0115m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.jeppesen.android.tc.activity.ApplicationPreferencesActivity */
public class ApplicationPreferencesActivity extends PreferenceActivity {

    /* renamed from: a */
    static List f127a;

    /* renamed from: c */
    private static Context f128c = null;

    /* renamed from: d */
    private static final String f129d = ApplicationPreferencesActivity.class.getSimpleName();

    /* renamed from: b */
    private List f130b;

    /* renamed from: com.jeppesen.android.tc.activity.ApplicationPreferencesActivity$AboutFragment */
    public class AboutFragment extends PreferenceFragment {
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.about_preferences);
        }
    }

    /* renamed from: com.jeppesen.android.tc.activity.ApplicationPreferencesActivity$ManualsFragment */
    public class ManualsFragment extends PreferenceFragment {

        /* renamed from: c */
        private static final String f131c = ManualsFragment.class.getSimpleName();

        /* renamed from: a */
        boolean f132a;

        /* renamed from: b */
        private SharedPreferences f133b = PreferenceManager.getDefaultSharedPreferences(ApplicationPreferencesActivity.f128c);

        /* renamed from: a */
        private PreferenceScreen m178a(boolean z) {
            PreferenceScreen createPreferenceScreen = getPreferenceManager().createPreferenceScreen(getActivity());
            PreferenceCategory preferenceCategory = new PreferenceCategory(getActivity());
            preferenceCategory.setTitle(R.string.airwayManualsTitle);
            createPreferenceScreen.addPreference(preferenceCategory);
            if (ApplicationPreferencesActivity.f127a == null || ApplicationPreferencesActivity.f127a.isEmpty()) {
                m179a(preferenceCategory);
                return createPreferenceScreen;
            }
            ArrayList<C0011b> arrayList = new ArrayList();
            ArrayList<C0011b> arrayList2 = new ArrayList();
            for (C0011b bVar : ApplicationPreferencesActivity.f127a) {
                if (bVar.mo68l().equals(C0010a.f86s)) {
                    arrayList2.add(bVar);
                } else {
                    arrayList.add(bVar);
                }
            }
            if (arrayList2.isEmpty()) {
                m179a(preferenceCategory);
            } else {
                for (C0011b bVar2 : arrayList2) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Jeppesen Airway Manual, ");
                    stringBuffer.append(C0107e.m388e(Double.valueOf(bVar2.mo62f()).doubleValue()));
                    CheckBoxPreference checkBoxPreference = new CheckBoxPreference(getActivity());
                    checkBoxPreference.setKey(bVar2.mo53b() + bVar2.mo62f());
                    checkBoxPreference.setTitle(bVar2.mo53b());
                    checkBoxPreference.setSummary(stringBuffer.toString());
                    checkBoxPreference.setPersistent(false);
                    checkBoxPreference.setChecked(bVar2.mo66j());
                    checkBoxPreference.setOnPreferenceChangeListener(new C0068j(this));
                    preferenceCategory.addPreference(checkBoxPreference);
                }
            }
            if (z) {
                PreferenceCategory preferenceCategory2 = new PreferenceCategory(getActivity());
                preferenceCategory2.setTitle(R.string.companyManualsTitle);
                createPreferenceScreen.addPreference(preferenceCategory2);
                if (arrayList.isEmpty()) {
                    m179a(preferenceCategory2);
                } else {
                    for (C0011b bVar3 : arrayList) {
                        String e = C0107e.m388e(Double.valueOf(bVar3.mo62f()).doubleValue());
                        CheckBoxPreference checkBoxPreference2 = new CheckBoxPreference(getActivity());
                        checkBoxPreference2.setKey(bVar3.mo53b() + bVar3.mo62f());
                        checkBoxPreference2.setTitle(bVar3.mo53b());
                        checkBoxPreference2.setSummary(e);
                        checkBoxPreference2.setPersistent(false);
                        checkBoxPreference2.setChecked(bVar3.mo66j());
                        checkBoxPreference2.setOnPreferenceChangeListener(new C0069k(this));
                        preferenceCategory2.addPreference(checkBoxPreference2);
                    }
                }
            }
            return createPreferenceScreen;
        }

        /* renamed from: a */
        private void m179a(PreferenceCategory preferenceCategory) {
            Preference preference = new Preference(getActivity());
            preference.setTitle(R.string.update_manuals_no_server_response);
            preferenceCategory.addPreference(preference);
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
        }

        public void onResume() {
            super.onResume();
            this.f132a = this.f133b.getBoolean("company_content", true);
            setPreferenceScreen(m178a(this.f132a));
        }
    }

    /* renamed from: com.jeppesen.android.tc.activity.ApplicationPreferencesActivity$PreferencesFragment */
    @SuppressLint("ValidFragment")
    public class PreferencesFragment extends PreferenceFragment {
        /* renamed from: a */
        private int m180a(PreferenceScreen preferenceScreen, String str) {
            int i = 0;
            for (int i2 = 0; i2 < preferenceScreen.getPreferenceCount(); i2++) {
                PreferenceCategory preferenceCategory = (PreferenceCategory) preferenceScreen.getPreference(i2);
                i++;
                int i3 = 0;
                while (i3 < preferenceCategory.getPreferenceCount()) {
                    if (preferenceCategory.getPreference(i3).getKey().contentEquals(str)) {
                        return i;
                    }
                    i3++;
                    i++;
                }
            }
            return 0;
        }

        /* renamed from: a */
        private void m182a(String str) {
            PreferenceScreen preferenceScreen = getPreferenceScreen();
            if (preferenceScreen != null) {
                preferenceScreen.onItemClick(null, null, m180a(preferenceScreen, str), 0);
            }
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.fragmented_preferences);
            CheckBoxPreference checkBoxPreference = (CheckBoxPreference) getPreferenceManager().findPreference("company_content");
            checkBoxPreference.setOnPreferenceChangeListener(new C0070l(this, checkBoxPreference));
        }
    }

    /* renamed from: com.jeppesen.android.tc.activity.ApplicationPreferencesActivity$UpdatesFragment */
    public class UpdatesFragment extends PreferenceFragment {

        /* renamed from: a */
        ProgressDialog f134a;

        /* renamed from: b */
        boolean f135b = false;

        /* renamed from: a */
        public void mo118a(String str) {
            if (!this.f135b) {
                Preference findPreference = findPreference("ManualsPrefScreenKey");
                if (str != null) {
                    findPreference.setSummary(str);
                } else if (ApplicationPreferencesActivity.f127a == null || ApplicationPreferencesActivity.f127a.size() < 1) {
                    findPreference.setSummary("Connection error, unable to connect to server.");
                } else if (C0010a.m102b(ApplicationPreferencesActivity.f127a)) {
                    findPreference.setSummary("Updates are ready");
                } else if (C0112j.m430a().size() < 1) {
                    findPreference.setSummary("None downloaded");
                } else {
                    findPreference.setSummary("Manuals are current");
                }
            }
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            ApplicationPreferencesActivity.f127a = null;
            addPreferencesFromResource(R.xml.updates_preferences);
        }

        public void onResume() {
            super.onResume();
            Preference findPreference = findPreference("ManualsPrefScreenKey");
            if (!C0002a.m7b()) {
                findPreference.setSummary("Manuals are not available in Demo mode");
                findPreference.setEnabled(false);
                return;
            }
            ChartCycleTextViewPreference chartCycleTextViewPreference = (ChartCycleTextViewPreference) findPreference("chartCyclePrefKey");
            int b = C0005a.m31b();
            if (b < 0) {
                chartCycleTextViewPreference.setSummary((CharSequence) null);
            } else {
                chartCycleTextViewPreference.setSummary(C0107e.m386c((double) b));
            }
            Set b2 = C0115m.m451b("downloadIds", ApplicationPreferencesActivity.f128c);
            if (b2.size() > 0) {
                new C0109g(ApplicationPreferencesActivity.f128c).mo387b(b2);
                C0115m.m450a("downloadIds", b2, ApplicationPreferencesActivity.f128c);
            }
            if (b2.size() > 0) {
                findPreference.setSummary("Downloads are in progress");
                findPreference.setEnabled(false);
                return;
            }
            if (ApplicationPreferencesActivity.f127a == null) {
                this.f134a = new ProgressDialog(getActivity());
                this.f134a.setMessage(getString(R.string.update_manuals_checking));
                this.f134a.setIndeterminate(true);
                this.f134a.setCancelable(false);
                this.f134a.show();
                this.f135b = true;
                new AsyncTaskC0072n(this).execute(new Void[0]);
            }
            findPreference.setEnabled(true);
            mo118a(null);
        }
    }

    /* renamed from: a */
    public static void m173a() {
        f127a = null;
    }

    /* renamed from: a */
    private void m174a(List list) {
        if (list.size() >= 1) {
            HashMap hashMap = new HashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                C0011b bVar = (C0011b) it.next();
                hashMap.put(bVar.mo53b(), bVar);
            }
            for (C0011b bVar2 : C0112j.m430a()) {
                C0011b bVar3 = (C0011b) hashMap.get(bVar2.mo53b());
                if (bVar3 != null && !bVar3.mo62f().equals(bVar2.mo62f()) && bVar2.mo52a()) {
                    list.add(list.indexOf(bVar3), bVar2);
                    Log.d(f129d, "Preserving the current subscription record of " + bVar2);
                }
            }
        }
    }

    public void UpdateOnClick(View view) {
        if (!C0002a.m7b()) {
            Intent intent = new Intent(this, ActivationActivity.class);
            intent.setFlags(67108864);
            startActivity(intent);
            return;
        }
        mo110b();
        Intent intent2 = new Intent(this, UpdateActivity.class);
        intent2.putExtra("com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode", false);
        startActivity(intent2);
    }

    /* renamed from: b */
    public void mo110b() {
        if (f127a != null) {
            ArrayList arrayList = new ArrayList();
            for (C0011b bVar : f127a) {
                if (bVar.mo66j()) {
                    arrayList.add(bVar);
                }
            }
            m174a(arrayList);
            C0112j.m433a(arrayList);
        }
    }

    @Override // android.preference.PreferenceActivity
    public void onBuildHeaders(List list) {
        loadHeadersFromResource(R.xml.preferences_headers, list);
        this.f130b = list;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f128c = getApplicationContext();
        new AsyncTaskC0071m(this).execute(new Void[0]);
        setTitle(R.string.settings);
    }

    public void onResume() {
        super.onResume();
        String stringExtra = getIntent().getStringExtra(":android:show_fragment");
        if (!(stringExtra == null || this.f130b == null)) {
            for (PreferenceActivity.Header header : this.f130b) {
                if (stringExtra.equals(header.fragment)) {
                    switchToHeader(header);
                    getIntent().removeExtra(":android:show_fragment");
                    return;
                }
            }
        }
    }
}
