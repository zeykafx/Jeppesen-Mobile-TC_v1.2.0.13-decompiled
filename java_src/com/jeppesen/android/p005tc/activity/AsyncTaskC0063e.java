package com.jeppesen.android.p005tc.activity;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.service.UpdateService;

/* renamed from: com.jeppesen.android.tc.activity.e */
class AsyncTaskC0063e extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ActivationActivity f355a;

    private AsyncTaskC0063e(ActivationActivity activationActivity) {
        this.f355a = activationActivity;
    }

    /* synthetic */ AsyncTaskC0063e(ActivationActivity activationActivity, C0013a aVar) {
        this(activationActivity);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Integer doInBackground(Void... voidArr) {
        int a = C0002a.m2a(ActivationActivity.m160c(this.f355a), ActivationActivity.m161d(this.f355a), ActivationActivity.m163e(this.f355a), ActivationActivity.m164f(this.f355a));
        if (a < 1) {
            Log.e(ActivationActivity.m162e(), "Calling activation server failed with error code: " + a);
            return Integer.valueOf(a);
        }
        C0002a.m5a(ActivationActivity.m160c(this.f355a), ActivationActivity.m163e(this.f355a));
        C0002a.m12e();
        return 1;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Integer num) {
        ActivationActivity.m166g(this.f355a).setVisibility(4);
        if (num.intValue() < 1) {
            switch (num.intValue()) {
                case -4:
                    this.f355a.showDialog(9);
                    return;
                case -3:
                    this.f355a.showDialog(8);
                    return;
                case -2:
                    this.f355a.showDialog(7);
                    return;
                case UpdateService.f404a /*{ENCODED_INT: -1}*/:
                    this.f355a.showDialog(6);
                    return;
                case UpdateService.f405b /*{ENCODED_INT: 0}*/:
                    this.f355a.showDialog(5);
                    return;
                default:
                    return;
            }
        } else if (C0002a.m8b(ActivationActivity.m167h(this.f355a))) {
            ActivationActivity.m168i(this.f355a).setInAnimation(this.f355a.getBaseContext(), R.anim.slide_in_right);
            ActivationActivity.m168i(this.f355a).setOutAnimation(this.f355a.getBaseContext(), R.anim.slide_out_left);
            ActivationActivity.m168i(this.f355a).setDisplayedChild(1);
        } else {
            SharedPreferences.Editor edit = ActivationActivity.m159b(this.f355a).edit();
            edit.putBoolean("company_content", false);
            edit.commit();
            ActivationActivity.m156a(this.f355a, false);
        }
    }
}
