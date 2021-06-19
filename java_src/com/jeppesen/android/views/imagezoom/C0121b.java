package com.jeppesen.android.views.imagezoom;

import android.os.Handler;
import android.os.SystemClock;
import java.util.Observable;
import java.util.Observer;

/* renamed from: com.jeppesen.android.views.imagezoom.b */
public class C0121b implements Observer {

    /* renamed from: a */
    private static final float f494a = 1.0f;

    /* renamed from: b */
    private static final float f495b = 3.0f;

    /* renamed from: c */
    private static final float f496c = 0.004f;

    /* renamed from: d */
    private static final float f497d = 0.01f;

    /* renamed from: e */
    private static final int f498e = 50;

    /* renamed from: f */
    private static final float f499f = 0.4f;

    /* renamed from: g */
    private final C0129j f500g = new C0129j();

    /* renamed from: h */
    private C0120a f501h;

    /* renamed from: i */
    private final C0124e f502i = new C0124e();

    /* renamed from: j */
    private final C0124e f503j = new C0124e();

    /* renamed from: k */
    private float f504k;

    /* renamed from: l */
    private float f505l;

    /* renamed from: m */
    private float f506m;

    /* renamed from: n */
    private float f507n;

    /* renamed from: o */
    private final Handler f508o = new Handler();

    /* renamed from: p */
    private final Runnable f509p = new RunnableC0122c(this);

    public C0121b() {
        this.f502i.mo438c(2.0f);
        this.f503j.mo438c(2.0f);
        this.f502i.mo437b(50.0f, f494a);
        this.f503j.mo437b(50.0f, f494a);
    }

    /* renamed from: a */
    private float m485a(float f) {
        return Math.max(0.0f, 0.5f * ((f - f494a) / f));
    }

    /* renamed from: d */
    private void m490d() {
        if (this.f500g.mo446c() < f494a) {
            this.f500g.mo449e(f494a);
        } else if (this.f500g.mo446c() > f495b) {
            this.f500g.mo449e(f495b);
        }
    }

    /* renamed from: e */
    private void m492e() {
        float a = this.f501h.mo417a();
        float a2 = this.f500g.mo443a(a);
        float b = this.f500g.mo445b(a);
        this.f504k = 0.5f - m485a(a2);
        this.f505l = m485a(a2) + 0.5f;
        this.f506m = 0.5f - m485a(b);
        this.f507n = m485a(b) + 0.5f;
    }

    /* renamed from: a */
    public C0129j mo419a() {
        return this.f500g;
    }

    /* renamed from: a */
    public void mo420a(float f, float f2) {
        float a = this.f501h.mo417a();
        float a2 = f / this.f500g.mo443a(a);
        float b = f2 / this.f500g.mo445b(a);
        if ((this.f500g.mo442a() > this.f505l && a2 > 0.0f) || (this.f500g.mo442a() < this.f504k && a2 < 0.0f)) {
            a2 *= f499f;
        }
        if ((this.f500g.mo444b() > this.f507n && b > 0.0f) || (this.f500g.mo444b() < this.f506m && b < 0.0f)) {
            b *= f499f;
        }
        float a3 = a2 + this.f500g.mo442a();
        float b2 = b + this.f500g.mo444b();
        this.f500g.mo447c(a3);
        this.f500g.mo448d(b2);
        this.f500g.notifyObservers();
    }

    /* renamed from: a */
    public void mo421a(float f, float f2, float f3) {
        float a = this.f501h.mo417a();
        float a2 = this.f500g.mo443a(a);
        float b = this.f500g.mo445b(a);
        this.f500g.mo449e(this.f500g.mo446c() * f);
        m490d();
        float a3 = this.f500g.mo443a(a);
        float b2 = this.f500g.mo445b(a);
        this.f500g.mo447c((((f494a / a2) - (f494a / a3)) * (f2 - 0.5f)) + this.f500g.mo442a());
        this.f500g.mo448d((((f494a / b) - (f494a / b2)) * (f3 - 0.5f)) + this.f500g.mo444b());
        m492e();
        this.f500g.notifyObservers();
    }

    /* renamed from: a */
    public void mo422a(C0120a aVar) {
        if (this.f501h != null) {
            this.f501h.deleteObserver(this);
        }
        this.f501h = aVar;
        this.f501h.addObserver(this);
    }

    /* renamed from: b */
    public void mo423b() {
        this.f508o.removeCallbacks(this.f509p);
    }

    /* renamed from: b */
    public void mo424b(float f, float f2) {
        float a = this.f501h.mo417a();
        long uptimeMillis = SystemClock.uptimeMillis();
        this.f502i.mo430a(this.f500g.mo442a(), f / this.f500g.mo443a(a), uptimeMillis);
        this.f503j.mo430a(this.f500g.mo444b(), f2 / this.f500g.mo445b(a), uptimeMillis);
        this.f502i.mo435b(this.f504k);
        this.f502i.mo429a(this.f505l);
        this.f503j.mo435b(this.f506m);
        this.f503j.mo429a(this.f507n);
        this.f508o.post(this.f509p);
    }

    /* renamed from: c */
    public void mo425c() {
        m490d();
        m492e();
    }

    public void update(Observable observable, Object obj) {
        m490d();
        m492e();
    }
}
