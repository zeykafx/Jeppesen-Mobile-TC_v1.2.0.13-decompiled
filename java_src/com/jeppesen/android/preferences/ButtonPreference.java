package com.jeppesen.android.preferences;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import com.jeppesen.android.p005tc.R;

public class ButtonPreference extends Preference {
    public ButtonPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setPersistent(false);
        setLayoutResource(R.layout.buttonpref);
        setKey("UpdateButton");
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
    }
}
