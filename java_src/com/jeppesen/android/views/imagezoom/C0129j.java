package com.jeppesen.android.views.imagezoom;

import java.util.Observable;

/* renamed from: com.jeppesen.android.views.imagezoom.j */
public class C0129j extends Observable {

    /* renamed from: a */
    private float f549a;

    /* renamed from: b */
    private float f550b;

    /* renamed from: c */
    private float f551c;

    /* renamed from: a */
    public float mo442a() {
        return this.f550b;
    }

    /* renamed from: a */
    public float mo443a(float f) {
        return Math.min(this.f549a, this.f549a * f);
    }

    /* renamed from: b */
    public float mo444b() {
        return this.f551c;
    }

    /* renamed from: b */
    public float mo445b(float f) {
        return Math.min(this.f549a, this.f549a / f);
    }

    /* renamed from: c */
    public float mo446c() {
        return this.f549a;
    }

    /* renamed from: c */
    public void mo447c(float f) {
        if (f != this.f550b) {
            this.f550b = f;
            setChanged();
        }
    }

    /* renamed from: d */
    public void mo448d(float f) {
        if (f != this.f551c) {
            this.f551c = f;
            setChanged();
        }
    }

    /* renamed from: e */
    public void mo449e(float f) {
        if (f != this.f549a) {
            this.f549a = f;
            setChanged();
        }
    }
}
