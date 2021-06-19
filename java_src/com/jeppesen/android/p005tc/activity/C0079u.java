package com.jeppesen.android.p005tc.activity;

import android.view.WindowManager;
import android.widget.SeekBar;

/* renamed from: com.jeppesen.android.tc.activity.u */
class C0079u implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f379a;

    C0079u(ChartDisplayActivity chartDisplayActivity) {
        this.f379a = chartDisplayActivity;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        WindowManager.LayoutParams attributes = this.f379a.getWindow().getAttributes();
        float f = attributes.screenBrightness;
        if (f < 0.0f) {
            float f2 = -f;
        }
        float f3 = ((float) i) / 100.0f;
        if (f3 > 0.1f) {
            attributes.screenBrightness = f3;
        } else {
            attributes.screenBrightness = 0.1f;
        }
        this.f379a.getWindow().setAttributes(attributes);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
