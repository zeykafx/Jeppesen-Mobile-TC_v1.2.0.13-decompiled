package com.jeppesen.android.util;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.activity.ApplicationPreferencesActivity;
import com.jeppesen.android.p005tc.p006a.C0010a;

public class UserPassDialogPreference extends DialogPreference {

    /* renamed from: a */
    private EditText f441a;

    /* renamed from: b */
    private EditText f442b;

    public UserPassDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setPersistent(false);
        setDialogLayoutResource(R.layout.alert_dialog_text_entry);
    }

    /* access modifiers changed from: protected */
    public void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this.f441a = (EditText) view.findViewById(R.id.username_edit);
        this.f442b = (EditText) view.findViewById(R.id.password_edit);
        String a = C0115m.m444a(C0010a.f68a, getContext());
        String a2 = C0115m.m444a(C0010a.f69b, getContext());
        this.f441a.setText(a);
        this.f442b.setText(a2);
    }

    /* access modifiers changed from: protected */
    public void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (z) {
            C0115m.m449a(C0010a.f68a, this.f441a.getText().toString(), getContext().getApplicationContext());
            C0115m.m449a(C0010a.f69b, this.f442b.getText().toString(), getContext().getApplicationContext());
            ApplicationPreferencesActivity.m173a();
        }
    }
}
