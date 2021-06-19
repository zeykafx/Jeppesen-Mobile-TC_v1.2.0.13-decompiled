package com.jeppesen.android.views.imagezoom;

import java.util.Observable;

/* renamed from: com.jeppesen.android.views.imagezoom.a */
public class C0120a extends Observable {

    /* renamed from: a */
    private float f493a;

    /* renamed from: a */
    public float mo417a() {
        return this.f493a;
    }

    /* renamed from: a */
    public void mo418a(float f, float f2, float f3, float f4) {
        float f5 = (f3 / f4) / (f / f2);
        if (f5 != this.f493a) {
            this.f493a = f5;
            setChanged();
        }
    }
}
