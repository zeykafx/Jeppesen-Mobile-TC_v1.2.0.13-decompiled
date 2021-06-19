package com.jeppesen.android.views.imagezoom;

/* renamed from: com.jeppesen.android.views.imagezoom.d */
public abstract class AbstractC0123d {

    /* renamed from: f */
    private static final int f511f = 60;

    /* renamed from: a */
    protected float f512a;

    /* renamed from: b */
    protected float f513b;

    /* renamed from: c */
    protected float f514c = Float.MAX_VALUE;

    /* renamed from: d */
    protected float f515d = -3.4028235E38f;

    /* renamed from: e */
    protected long f516e = 0;

    /* renamed from: a */
    public float mo428a() {
        return this.f512a;
    }

    /* renamed from: a */
    public void mo429a(float f) {
        this.f514c = f;
    }

    /* renamed from: a */
    public void mo430a(float f, float f2, long j) {
        this.f513b = f2;
        this.f512a = f;
        this.f516e = j;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo431a(int i);

    /* renamed from: a */
    public void mo432a(long j) {
        int i = f511f;
        int i2 = (int) (j - this.f516e);
        if (i2 <= f511f) {
            i = i2;
        }
        mo431a(i);
        this.f516e = j;
    }

    /* renamed from: a */
    public boolean mo433a(float f, float f2) {
        return ((Math.abs(this.f513b) > f ? 1 : (Math.abs(this.f513b) == f ? 0 : -1)) < 0) && (((this.f512a - f2) > this.f514c ? 1 : ((this.f512a - f2) == this.f514c ? 0 : -1)) < 0 && ((this.f512a + f2) > this.f515d ? 1 : ((this.f512a + f2) == this.f515d ? 0 : -1)) > 0);
    }

    /* renamed from: b */
    public float mo434b() {
        return this.f513b;
    }

    /* renamed from: b */
    public void mo435b(float f) {
        this.f515d = f;
    }

    /* access modifiers changed from: protected */
    /* renamed from: c */
    public float mo436c() {
        if (this.f512a > this.f514c) {
            return this.f514c - this.f512a;
        }
        if (this.f512a < this.f515d) {
            return this.f515d - this.f512a;
        }
        return 0.0f;
    }
}
