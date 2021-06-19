package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.ViewFlipper;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.p006a.C0010a;
import com.jeppesen.android.p005tc.service.UpdateService;
import com.jeppesen.android.util.C0108f;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.jeppview.jtca.ActivationNativeWrapper;

/* renamed from: com.jeppesen.android.tc.activity.ActivationActivity */
public class ActivationActivity extends Activity {

    /* renamed from: A */
    private static final int f96A;

    /* renamed from: B */
    private static final int f97B;

    /* renamed from: C */
    private static final int f98C;

    /* renamed from: D */
    private static final int f99D;

    /* renamed from: E */
    private static final int f100E;

    /* renamed from: a */
    private static final String f101a = ActivationActivity.class.getSimpleName();

    /* renamed from: o */
    private static final int f102o;

    /* renamed from: p */
    private static final int f103p;

    /* renamed from: q */
    private static final int f104q;

    /* renamed from: r */
    private static final int f105r;

    /* renamed from: s */
    private static final int f106s;

    /* renamed from: t */
    private static final int f107t;

    /* renamed from: u */
    private static final int f108u;

    /* renamed from: v */
    private static final int f109v;

    /* renamed from: w */
    private static final int f110w;

    /* renamed from: x */
    private static final int f111x;

    /* renamed from: y */
    private static final int f112y;

    /* renamed from: z */
    private static final int f113z;

    /* renamed from: b */
    private String f114b = null;

    /* renamed from: c */
    private String f115c = null;

    /* renamed from: d */
    private String f116d = null;

    /* renamed from: e */
    private String f117e = null;

    /* renamed from: f */
    private String f118f = null;

    /* renamed from: g */
    private String f119g = null;

    /* renamed from: h */
    private String f120h = null;

    /* renamed from: i */
    private ViewFlipper f121i;

    /* renamed from: j */
    private View f122j;

    /* renamed from: k */
    private View f123k;

    /* renamed from: l */
    private ProgressBar f124l;

    /* renamed from: m */
    private ProgressBar f125m;

    /* renamed from: n */
    private SharedPreferences f126n = null;

    /* renamed from: a */
    private Dialog m154a(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setCancelable(false);
        builder.setPositiveButton("OK", new DialogInterface$OnClickListenerC0043b(this));
        return builder.create();
    }

    /* renamed from: a */
    private void m157a(boolean z) {
        Intent intent = new Intent(getApplicationContext(), UpdateActivity.class);
        intent.putExtra("com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode", z);
        intent.setFlags(67108864);
        startActivity(intent);
        finish();
    }

    /* renamed from: b */
    private Dialog m158b(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setCancelable(false);
        builder.setPositiveButton("Login", new DialogInterface$OnClickListenerC0061c(this));
        builder.setNegativeButton("Cancel", new DialogInterface$OnClickListenerC0062d(this));
        return builder.create();
    }

    /* renamed from: f */
    private boolean m165f() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }

    public void ActivateButtonOnClick(View view) {
        mo105c();
        this.f114b = ((EditText) findViewById(R.id.activation_snEditor)).getText().toString();
        this.f115c = ((EditText) findViewById(R.id.activation_nameEditor)).getText().toString();
        if (!m165f()) {
            Log.d(f101a, "Device is not online. Can't update");
            showDialog(0);
            mo106d();
        } else if (this.f115c == null || this.f115c.length() == 0) {
            showDialog(2);
            mo106d();
        } else if (this.f114b == null || this.f114b.length() == 0) {
            showDialog(1);
            mo106d();
            findViewById(R.id.activation_snEditor).requestFocus();
        } else {
            this.f116d = C0002a.m9c(this.f114b);
            if (this.f116d == null) {
                showDialog(1);
                mo106d();
                findViewById(R.id.activation_snEditor).requestFocus();
                return;
            }
            String c = C0108f.m393c(getApplicationContext());
            if (c == null) {
                showDialog(3);
                mo106d();
                return;
            }
            C0115m.m449a("IATAConversionCRC", c, getApplicationContext());
            try {
                this.f117e = ActivationNativeWrapper.generateSiteCode(this.f116d, c);
                this.f118f = ActivationNativeWrapper.generateActivationCodeFromSiteCode(this.f117e);
                this.f124l.setVisibility(0);
                new AsyncTaskC0063e(this, null).execute(new Void[0]);
            } catch (OutOfMemoryError e) {
                Log.e("JNI Error", "OutOfMemoryError in JNI code generating siteKey.");
                showDialog(4);
                mo106d();
            }
        }
    }

    public void DemoButtonOnClick(View view) {
        new C0013a(this).start();
        finish();
    }

    public void LoginButtonOnClick(View view) {
        mo103a();
        this.f120h = ((EditText) findViewById(R.id.login_passwordEditor)).getText().toString();
        this.f119g = ((EditText) findViewById(R.id.login_nameEditor)).getText().toString();
        if (this.f119g == null || this.f119g.length() == 0) {
            mo104b();
            showDialog(11);
        } else if (this.f120h == null || this.f120h.length() == 0) {
            mo104b();
            showDialog(12);
        } else if (!m165f()) {
            Log.d(f101a, "Device is not online. Can't autheticate user.");
            showDialog(f97B);
            mo104b();
        } else {
            C0115m.m449a(C0010a.f68a, this.f119g, getApplicationContext());
            C0115m.m449a(C0010a.f69b, this.f120h, getApplicationContext());
            this.f125m.setVisibility(0);
            new AsyncTaskC0064f(this, null).execute(this.f119g, this.f120h);
        }
    }

    public void LoginCancelButtonOnClick(View view) {
        mo103a();
        showDialog(10);
    }

    /* renamed from: a */
    public void mo103a() {
        findViewById(R.id.cancel_button).setEnabled(false);
        findViewById(R.id.login_button).setEnabled(false);
        findViewById(R.id.login_passwordEditor).setFocusable(false);
        findViewById(R.id.login_nameEditor).setFocusable(false);
    }

    /* renamed from: b */
    public void mo104b() {
        findViewById(R.id.cancel_button).setEnabled(true);
        findViewById(R.id.login_button).setEnabled(true);
        findViewById(R.id.login_nameEditor).setFocusableInTouchMode(true);
        findViewById(R.id.login_passwordEditor).setFocusableInTouchMode(true);
    }

    /* renamed from: c */
    public void mo105c() {
        findViewById(R.id.demoButton).setEnabled(false);
        findViewById(R.id.activateButton).setEnabled(false);
        findViewById(R.id.activation_snEditor).setFocusable(false);
        findViewById(R.id.activation_nameEditor).setFocusable(false);
    }

    /* renamed from: d */
    public void mo106d() {
        findViewById(R.id.demoButton).setEnabled(true);
        findViewById(R.id.activateButton).setEnabled(true);
        findViewById(R.id.activation_nameEditor).setFocusableInTouchMode(true);
        findViewById(R.id.activation_snEditor).setFocusableInTouchMode(true);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f126n = PreferenceManager.getDefaultSharedPreferences(this);
        setContentView(R.layout.activation);
        this.f124l = (ProgressBar) findViewById(R.id.activation_progress);
    }

    public Dialog onCreateDialog(int i) {
        switch (i) {
            case UpdateService.f405b /*{ENCODED_INT: 0}*/:
                return m154a(getString(R.string.connection_problem), getString(R.string.you_must_be_connected_to_the_internet_to_update_your_charts_));
            case 1:
                return m154a("Device Activation", "You must enter a valid Jeppesen Serial Number to activate.");
            case 2:
                return m154a("Device Activation", "Name field cannot be empty.");
            case 3:
                return m154a("Device Activation", "Can't connect to Jeppesen Activation Server. Is your device online?");
            case 4:
                return m154a(getString(R.string.internal_error), getString(R.string.please_retry_your_last_operation_));
            case 5:
                return m154a(getString(R.string.machine_activation), getString(R.string.can_t_connect_to_jeppesen_activation_server_contact_jeppesen_technical_support_));
            case 6:
                return m154a(getString(R.string.machine_activation), getString(R.string.can_t_connect_to_jeppesen_activation_server_contact_jeppesen_technical_support_));
            case 7:
                return m154a(getString(R.string.machine_activation), getString(R.string.invalid_serial_number_please_contact_jeppesen_technical_support_));
            case 8:
                return m154a(getString(R.string.machine_activation), getString(R.string.you_have_exceeded_the_number_of_devices_authorized_to_run_jeppesen_mobile_tc_please_contact_jeppesen_support_));
            case 9:
                return m154a(getString(R.string.machine_activation), getString(R.string.unable_to_activate_charts_on_this_machine_contact_jeppesen_technical_support_));
            case 10:
                return m158b("Company Content", "Are you sure you want to cancel access to company content?");
            case 11:
                return m154a("Login Error", "Name field cannot be empty.");
            case 12:
                return m154a("Login Error", "Password field cannot be empty.");
            case f97B:
                return m154a("Login Error", "Server problem: The Internet connection appears to be offline.");
            case f98C:
                return m154a("Login Error", "Invalid Username or Password. Please try again.");
            default:
                return null;
        }
    }
}
