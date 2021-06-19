package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.android.p005tc.service.ManualsService;
import com.jeppesen.android.p005tc.service.UpdateService;
import com.jeppesen.android.util.C0109g;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.C0117o;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: com.jeppesen.android.tc.activity.UpdateActivity */
public class UpdateActivity extends Activity {

    /* renamed from: c */
    private static final String f232c = UpdateActivity.class.getSimpleName();

    /* renamed from: d */
    private static final int f233d = 0;

    /* renamed from: e */
    private static final int f234e = 1;

    /* renamed from: f */
    private static final int f235f = 2;

    /* renamed from: g */
    private static final int f236g = 3;

    /* renamed from: h */
    private static final int f237h = 4;

    /* renamed from: A */
    private File f238A;

    /* renamed from: B */
    private File f239B;

    /* renamed from: C */
    private List f240C;

    /* renamed from: D */
    private StringBuffer f241D = new StringBuffer();

    /* renamed from: E */
    private long f242E = 0;

    /* renamed from: F */
    private SharedPreferences f243F = null;

    /* renamed from: G */
    private String f244G = null;

    /* renamed from: H */
    private String f245H = "DataEulaAccepted";

    /* renamed from: I */
    private String f246I = "FirstDataEulaDownload";

    /* renamed from: J */
    private String f247J = "dataEula_";

    /* renamed from: K */
    private TextView f248K = null;

    /* renamed from: L */
    private TextView f249L = null;

    /* renamed from: M */
    private long f250M = 0;

    /* renamed from: N */
    private long f251N = 0;

    /* renamed from: O */
    private Set f252O = new HashSet();

    /* renamed from: P */
    private BroadcastReceiver f253P = new C0040ax(this);

    /* renamed from: Q */
    private ServiceConnection f254Q = new ServiceConnectionC0041ay(this);

    /* renamed from: a */
    TextView f255a = null;

    /* renamed from: b */
    View f256b = null;

    /* renamed from: i */
    private UpdateService f257i = null;

    /* renamed from: j */
    private boolean f258j = false;

    /* renamed from: k */
    private int f259k = -2;

    /* renamed from: l */
    private AsyncTaskC0060bq f260l = null;

    /* renamed from: m */
    private ProgressBar f261m = null;

    /* renamed from: n */
    private ProgressBar f262n = null;

    /* renamed from: o */
    private TextView f263o = null;

    /* renamed from: p */
    private int f264p = 0;

    /* renamed from: q */
    private int f265q = -1;

    /* renamed from: r */
    private String f266r = null;

    /* renamed from: s */
    private String f267s = null;

    /* renamed from: t */
    private boolean f268t = false;

    /* renamed from: u */
    private String f269u = null;

    /* renamed from: v */
    private boolean f270v = false;

    /* renamed from: w */
    private boolean f271w = false;

    /* renamed from: x */
    private boolean f272x = false;

    /* renamed from: y */
    private boolean f273y = false;

    /* renamed from: z */
    private ListView f274z;

    /* renamed from: a */
    private Dialog m252a(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setCancelable(false);
        builder.setPositiveButton("OK", new DialogInterface$OnClickListenerC0042az(this));
        return builder.create();
    }

    /* renamed from: a */
    private boolean m261a(C0012c cVar) {
        return !((C0012c) C0117o.m462a().get(0)).mo88f().equals(cVar.mo88f());
    }

    /* renamed from: b */
    private Dialog m263b(String str, String str2) {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.eula_dialog, (ViewGroup) null);
        ((WebView) inflate.findViewById(R.id.EulaDialogWebView)).loadDataWithBaseURL(null, str2, "text/html", "UTF-8", null);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setIcon(R.drawable.icon_about);
        builder.setView(inflate);
        builder.setTitle(str);
        builder.setCancelable(false);
        builder.setPositiveButton("I Accept", new DialogInterface$OnClickListenerC0044ba(this));
        builder.setNegativeButton("I Decline", new DialogInterface$OnClickListenerC0045bb(this));
        return builder.create();
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public void m265b(int i) {
        runOnUiThread(new RunnableC0046bc(this, i));
    }

    /* renamed from: b */
    private boolean m267b() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }

    /* renamed from: c */
    private void m270c() {
        boolean z;
        if (this.f240C != null) {
            ArrayList<C0012c> arrayList = new ArrayList();
            for (C0012c cVar : this.f240C) {
                if (cVar.mo93k()) {
                    arrayList.add(cVar);
                }
            }
            String a = C0115m.m444a("loadedTailoredCoverageId", getApplicationContext());
            C0117o.m464a(arrayList);
            boolean z2 = false;
            for (C0012c cVar2 : arrayList) {
                if (!cVar2.mo93k() || (cVar2.mo91i().equals(a) && !m261a(cVar2))) {
                    z = z2;
                } else {
                    new AsyncTaskC0055bl(this, null).execute(cVar2);
                    z = true;
                }
                z2 = z;
            }
            if (z2) {
                mo183a(getString(R.string.update_coverages_downloading));
            } else {
                mo183a(getString(R.string.update_coverages_no_update_needed));
            }
        }
    }

    /* renamed from: d */
    private void m273d() {
        boolean z;
        List<C0011b> a = C0112j.m430a();
        if (a != null) {
            boolean z2 = false;
            for (C0011b bVar : a) {
                if (!bVar.mo66j() || bVar.mo52a()) {
                    z = z2;
                } else {
                    new AsyncTaskC0056bm(this, null).execute(bVar);
                    z = true;
                }
                z2 = z;
            }
            if (z2) {
                mo185b(getString(R.string.update_status_downloading));
            } else if (C0112j.m430a().size() < 1) {
                mo185b(getString(R.string.update_manuals_none_subscribed));
            } else {
                mo185b(getString(R.string.update_manuals_no_update_needed));
            }
        }
        new AsyncTaskC0054bk(this, null).execute(new Void[0]);
    }

    /* access modifiers changed from: private */
    /* renamed from: d */
    public void m274d(String str) {
        if (this.f271w) {
            m270c();
        } else if (!this.f272x) {
            if (!this.f258j) {
                this.f258j = bindService(new Intent(this, UpdateService.class), this.f254Q, 0);
            }
            Intent intent = new Intent(this, UpdateService.class);
            intent.putExtra("com.jeppesen.android.tc.service.UpdateService_SN", str);
            intent.putExtra("com.jeppesen.android.tc.service.UpdateService_SiteCode", this.f266r);
            intent.putExtra("com.jeppesen.android.tc.service.UpdateService_SiteKey", this.f267s);
            intent.putExtra("com.jeppesen.android.tc.service.UpdateService_NeedToResume", this.f268t);
            startService(intent);
            this.f272x = true;
        }
        if (this.f252O.isEmpty()) {
            m273d();
        }
    }

    public void SelectCoverageForDownload(View view) {
        for (C0012c cVar : this.f240C) {
            cVar.mo76a(false);
        }
        C0012c cVar2 = (C0012c) view.getTag();
        cVar2.mo76a(!cVar2.mo93k());
        if (cVar2.mo93k()) {
            this.f273y = true;
        } else {
            this.f273y = false;
        }
        ((C0039aw) this.f274z.getAdapter()).notifyDataSetChanged();
    }

    public void UpdateCoveragesOnClick(View view) {
        mo183a(getString(R.string.update_coverages_checking));
        new AsyncTaskC0057bn(this, null).execute(new Void[0]);
    }

    public void UpdateOnClick(View view) {
        this.f261m.setProgress(0);
        this.f263o.setText("");
        this.f265q = -1;
        this.f268t = C0005a.m42i();
        if (!m267b()) {
            Log.d(f232c, "Device is not online. Can't update");
            showDialog(0);
        } else if (!this.f271w || !C0115m.m444a("loadedTailoredCoverageId", getApplicationContext()).isEmpty() || this.f273y) {
            new AsyncTaskC0059bp(this, this.f269u).execute(new Void[0]);
        } else {
            showDialog(4);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo183a(String str) {
        this.f255a.setText(str);
    }

    /* renamed from: a */
    public boolean mo184a(int i) {
        String string;
        boolean z = false;
        if ((this.f257i.mo367a() == 7 || this.f257i.mo367a() == 9) && this.f265q < 100) {
            int c = this.f257i.mo369c();
            if (this.f250M == 0) {
                this.f250M = C0115m.m454e("downloadStartTime", getApplicationContext());
                if (this.f250M == 0) {
                    this.f250M = System.currentTimeMillis();
                    C0115m.m448a("downloadStartTime", this.f250M, getApplicationContext());
                }
            }
            int c2 = C0115m.m452c("percentsDownloaded", getApplicationContext());
            if (this.f265q != c) {
                this.f265q = c;
                if (c - c2 > 0) {
                    this.f251N = (((System.currentTimeMillis() - this.f250M) / ((long) (c - c2))) * ((long) (100 - c))) / 1000;
                }
                if (this.f265q > 100) {
                    this.f265q = 100;
                }
                if (this.f264p == 0) {
                    this.f264p = this.f257i.mo370d();
                }
                runOnUiThread(new RunnableC0047bd(this));
            }
        }
        if (this.f259k != i) {
            this.f259k = i;
            switch (i) {
                case UpdateService.f423t /*{ENCODED_INT: -50}*/:
                    m265b(-50);
                    string = getString(R.string.out_of_memory_error);
                    z = true;
                    break;
                case UpdateService.f422s /*{ENCODED_INT: -20}*/:
                    m265b(-20);
                    string = getString(R.string.update_server_error);
                    z = true;
                    break;
                case UpdateService.f421r /*{ENCODED_INT: -19}*/:
                    m265b(-19);
                    string = getString(R.string.update_server_error);
                    break;
                case UpdateService.f420q /*{ENCODED_INT: -18}*/:
                    m265b(-18);
                    string = getString(R.string.update_server_error);
                    z = true;
                    break;
                case UpdateService.f419p /*{ENCODED_INT: -12}*/:
                    m265b(-12);
                    string = getString(R.string.update_problem);
                    z = true;
                    break;
                case UpdateService.f418o /*{ENCODED_INT: -10}*/:
                    m265b(-10);
                    string = getString(R.string.connection_problem);
                    z = true;
                    break;
                case UpdateService.f404a /*{ENCODED_INT: -1}*/:
                    string = getString(R.string.update_status_nothing_happening);
                    break;
                case 0:
                    string = getString(R.string.update_status_updating);
                    break;
                case 1:
                    string = getString(R.string.update_status_activating_device);
                    break;
                case 2:
                    string = getString(R.string.update_status_deleting);
                    break;
                case 3:
                    string = getString(R.string.update_status_contacting_lb);
                    break;
                case 4:
                    string = getString(R.string.update_status_contacting_updateserver);
                    break;
                case UpdateService.f410g /*{ENCODED_INT: 5}*/:
                    string = getString(R.string.update_status_checking_for_updates);
                    break;
                case UpdateService.f411h /*{ENCODED_INT: 6}*/:
                    string = getString(R.string.update_status_packaging_download);
                    runOnUiThread(new RunnableC0048be(this));
                    break;
                case UpdateService.f412i /*{ENCODED_INT: 7}*/:
                    string = getString(R.string.update_status_downloading);
                    runOnUiThread(new RunnableC0049bf(this));
                    break;
                case UpdateService.f413j /*{ENCODED_INT: 8}*/:
                    string = getString(R.string.update_status_download_interrupted);
                    C0115m.m455f("downloadStartTime", getApplicationContext());
                    C0115m.m447a("percentsDownloaded", this.f265q, getApplicationContext());
                    this.f250M = 0;
                    runOnUiThread(new RunnableC0050bg(this));
                    break;
                case UpdateService.f414k /*{ENCODED_INT: 9}*/:
                    string = getString(R.string.update_status_merging);
                    runOnUiThread(new RunnableC0051bh(this));
                    break;
                case UpdateService.f415l /*{ENCODED_INT: 10}*/:
                    C0115m.m455f("downloadStartTime", getApplicationContext());
                    C0115m.m455f("percentsDownloaded", getApplicationContext());
                    this.f250M = 0;
                    string = getString(R.string.update_charts_no_update_needed);
                    runOnUiThread(new RunnableC0052bi(this));
                    if (this.f270v) {
                        SharedPreferences.Editor edit = this.f243F.edit();
                        edit.putBoolean(this.f246I, false);
                        edit.commit();
                        break;
                    }
                    break;
                case UpdateService.f416m /*{ENCODED_INT: 11}*/:
                    string = getString(R.string.update_status_device_deactivated);
                    this.f248K.setText("");
                    break;
                case UpdateService.f417n /*{ENCODED_INT: 12}*/:
                    string = getString(R.string.update_status_charts_current);
                    break;
                default:
                    string = String.valueOf(i);
                    break;
            }
            runOnUiThread(new RunnableC0053bj(this, string));
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: b */
    public void mo185b(String str) {
        this.f249L.setText(str);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: c */
    public void mo186c(String str) {
        TextView textView = (TextView) findViewById(R.id.update_error_message);
        if (str != null) {
            textView.setText(str);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(4);
    }

    public void onConfigurationChanged(Configuration configuration) {
        Log.d(f232c, "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        Log.d(f232c, "onCreate()");
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f271w = extras.getBoolean("com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode");
        }
        this.f258j = bindService(new Intent(this, UpdateService.class), this.f254Q, 0);
        Log.d(f232c, "currently bound to UpdateService: " + this.f258j);
        setContentView(R.layout.update);
        this.f238A = MobileTC.m77c();
        this.f239B = MobileTC.m79d();
        this.f255a = (TextView) findViewById(R.id.update_statusValue);
        this.f256b = findViewById(R.id.update_charts_complex_layout);
        this.f261m = (ProgressBar) findViewById(R.id.update_progressbar);
        this.f261m.setProgress(0);
        this.f263o = (TextView) findViewById(R.id.update_progressbar_message);
        this.f262n = (ProgressBar) findViewById(R.id.merge_progressbar);
        this.f249L = (TextView) findViewById(R.id.update_manuals_status_value);
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int i) {
        switch (i) {
            case UpdateService.f423t /*{ENCODED_INT: -50}*/:
                return m252a(getString(R.string.out_of_memory_error), getString(R.string.please_restart_the_application_));
            case UpdateService.f422s /*{ENCODED_INT: -20}*/:
                return m252a(getString(R.string.update_server_error), this.f257i.mo368b());
            case UpdateService.f421r /*{ENCODED_INT: -19}*/:
                return m252a(getString(R.string.network_error), getString(R.string.poor_internet_connection_please_try_again_));
            case UpdateService.f420q /*{ENCODED_INT: -18}*/:
                return m252a(getString(R.string.update_server_error), getString(R.string.can_t_connect_to_jeppesen_update_server_contact_jeppesen_technical_support_));
            case UpdateService.f419p /*{ENCODED_INT: -12}*/:
                return m252a(getString(R.string.error_applying_update), getString(R.string.a_problem_was_encountered_unpacking_the_download_file_));
            case UpdateService.f418o /*{ENCODED_INT: -10}*/:
                return m252a(getString(R.string.connection_problem), getString(R.string.you_must_be_connected_to_the_internet_to_update_your_charts_));
            case 0:
                return m252a(getString(R.string.connection_problem), getString(R.string.you_must_be_connected_to_the_internet_to_update_your_charts_));
            case 1:
                return m252a(getString(R.string.connection_problem), getString(R.string.you_must_be_connected_to_the_internet_to_update_your_charts_));
            case 2:
                return m263b(getString(R.string.data_eula_title), this.f241D.toString());
            case 3:
                return m252a(getString(R.string.eula_error_title), getString(R.string.eula_error_msg));
            case 4:
                return m252a(getString(R.string.select_coverage), getString(R.string.choose_coverage));
            default:
                return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        Log.d(f232c, "onDestroy()");
        super.onDestroy();
        if (this.f258j) {
            unbindService(this.f254Q);
        }
        if (this.f260l != null) {
            this.f260l.cancel(true);
        }
        this.f260l = null;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.f253P);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        boolean z = false;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
        registerReceiver(this.f253P, intentFilter);
        this.f252O = C0115m.m451b("downloadIds", getApplicationContext());
        if (!this.f252O.isEmpty()) {
            z = new C0109g(this).mo387b(this.f252O);
            C0115m.m450a("downloadIds", this.f252O, getApplicationContext());
        }
        if (!this.f252O.isEmpty()) {
            mo185b(getString(R.string.update_status_downloading));
        } else if (ManualsService.m362a()) {
            mo185b(getString(R.string.update_manuals_postprocessing));
        } else if (C0112j.m430a().size() < 1) {
            mo185b(getString(R.string.update_manuals_none_subscribed));
        } else {
            mo185b(getString(R.string.update_manuals_no_update_needed));
        }
        if (this.f272x) {
            mo183a(getString(R.string.update_status_downloading));
        } else if (!C0010a.m95a()) {
            mo183a(getString(R.string.update_status_charts_current));
        }
        mo186c(z ? getString(R.string.update_status_error_generic) : null);
        if (this.f252O.isEmpty() && !this.f272x && !ManualsService.m362a()) {
            UpdateOnClick(null);
        }
    }
}
