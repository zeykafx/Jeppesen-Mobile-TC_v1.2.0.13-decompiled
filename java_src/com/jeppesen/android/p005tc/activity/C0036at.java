package com.jeppesen.android.p005tc.activity;

import android.util.Log;
import com.jeppesen.android.util.JeppAndroidApp;

/* renamed from: com.jeppesen.android.tc.activity.at */
class C0036at extends Thread {

    /* renamed from: a */
    final /* synthetic */ SplashScreenActivity f324a;

    C0036at(SplashScreenActivity splashScreenActivity) {
        this.f324a = splashScreenActivity;
    }

    public void run() {
        int i = 0;
        while (true) {
            try {
                if (this.f324a.f230c && i >= this.f324a.f231d) {
                    break;
                }
                sleep(100);
                i += 100;
            } catch (InterruptedException e) {
                Log.d(SplashScreenActivity.m249b(), "splashThread interrupted");
                this.f324a.finish();
                if (JeppAndroidApp.f436a) {
                    Log.d(SplashScreenActivity.m249b(), "appInitFinished, continuing to chart display");
                }
                this.f324a.mo176a();
                return;
            } catch (Throwable th) {
                this.f324a.finish();
                if (JeppAndroidApp.f436a) {
                    Log.d(SplashScreenActivity.m249b(), "appInitFinished, continuing to chart display");
                }
                this.f324a.mo176a();
                throw th;
            }
        }
        this.f324a.finish();
        if (JeppAndroidApp.f436a) {
            Log.d(SplashScreenActivity.m249b(), "appInitFinished, continuing to chart display");
        }
        this.f324a.mo176a();
    }
}
