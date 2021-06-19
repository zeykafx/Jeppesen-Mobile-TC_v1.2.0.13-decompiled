package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;

/* renamed from: com.jeppesen.android.tc.activity.SplashScreenActivity */
public class SplashScreenActivity extends Activity {

    /* renamed from: e */
    private static final String f227e = SplashScreenActivity.class.getSimpleName();

    /* renamed from: a */
    protected boolean f228a = true;

    /* renamed from: b */
    protected boolean f229b = true;

    /* renamed from: c */
    protected boolean f230c = false;

    /* renamed from: d */
    protected int f231d = 2000;

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo176a() {
        Log.d(f227e, "About to launch ChartDisplay activity");
        Intent intent = new Intent("com.jeppesen.android.tc.activity.ChartDisplayActivity");
        intent.setFlags(131072);
        intent.addFlags(536870912);
        startActivity(intent);
    }

    public void onCreate(Bundle bundle) {
        Log.d(f227e, "onCreate()");
        super.onCreate(bundle);
        new AsyncTaskC0038av(this, null).execute(new Void[0]);
        setContentView(R.layout.splashscreen);
        MobileTC.m72a((Bitmap) null);
        if (MobileTC.m87k() != null) {
            Log.d(f227e, "skipping splash screen because image is already set");
            mo176a();
            return;
        }
        new AsyncTaskC0037au(this).execute(new Void[0]);
        new C0036at(this).start();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 || i == 84 || i == 3) {
            this.f229b = false;
            this.f228a = false;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return true;
        }
        this.f228a = false;
        return true;
    }
}
