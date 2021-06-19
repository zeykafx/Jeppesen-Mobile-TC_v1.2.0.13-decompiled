package com.jeppesen.jeppview.jtca.data;

import com.jeppesen.android.p005tc.p006a.C0011b;

public class ManualGroupDivider extends C0011b {

    /* renamed from: c */
    private static final String f630c = ManualGroupDivider.class.getSimpleName();

    /* renamed from: b */
    protected String f631b;

    /* renamed from: e */
    public void mo503e(String str) {
        this.f631b = str;
    }

    /* renamed from: q */
    public String mo504q() {
        return this.f631b;
    }

    @Override // com.jeppesen.android.p005tc.p006a.C0011b
    public String toString() {
        return new String("just a divider");
    }
}
