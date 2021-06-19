package com.jeppesen.android.views.imagezoom;

/* renamed from: com.jeppesen.android.views.imagezoom.e */
public class C0124e extends AbstractC0123d {

    /* renamed from: f */
    private float f517f;

    /* renamed from: g */
    private float f518g;

    /* renamed from: h */
    private float f519h;

    /* renamed from: d */
    private float m509d() {
        float c = mo436c();
        return c != 0.0f ? (c * this.f518g) - (this.f519h * this.f513b) : (-this.f517f) * this.f513b;
    }

    /* access modifiers changed from: protected */
    @Override // com.jeppesen.android.views.imagezoom.AbstractC0123d
    /* renamed from: a */
    public void mo431a(int i) {
        float f = ((float) i) / 1000.0f;
        float d = m509d();
        this.f512a += (this.f513b * f) + (0.5f * d * f * f);
        this.f513b = (f * d) + this.f513b;
    }

    /* renamed from: b */
    public void mo437b(float f, float f2) {
        this.f518g = f;
        this.f519h = 2.0f * f2 * ((float) Math.sqrt((double) f));
    }

    /* renamed from: c */
    public void mo438c(float f) {
        this.f517f = f;
    }
}
