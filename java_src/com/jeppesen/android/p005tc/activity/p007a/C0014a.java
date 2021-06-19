package com.jeppesen.android.p005tc.activity.p007a;

import android.app.Activity;
import android.location.Location;
import android.location.LocationListener;
import android.os.AsyncTask;
import android.util.Log;

/* renamed from: com.jeppesen.android.tc.activity.a.a */
public class C0014a {

    /* renamed from: m */
    private static final String f276m = C0014a.class.getSimpleName();

    /* renamed from: n */
    private static final int f277n = 1000;

    /* renamed from: o */
    private static final double f278o = 0.001d;

    /* renamed from: a */
    protected Activity f279a;

    /* renamed from: b */
    protected LocationListener f280b;

    /* renamed from: c */
    protected String[] f281c;

    /* renamed from: d */
    protected boolean f282d;

    /* renamed from: e */
    protected int f283e = 0;

    /* renamed from: f */
    protected int f284f;

    /* renamed from: g */
    protected int f285g = 0;

    /* renamed from: h */
    protected double f286h;

    /* renamed from: i */
    protected double f287i;

    /* renamed from: j */
    protected Location f288j;

    /* renamed from: k */
    protected Location f289k;

    /* renamed from: l */
    protected AsyncTask f290l = new AsyncTaskC0015b(this);

    public C0014a(Activity activity, LocationListener locationListener, String[] strArr) {
        this.f279a = activity;
        this.f280b = locationListener;
        if (activity == null || locationListener == null) {
            throw new RuntimeException("Calling Activity and its locationListener cannot be null");
        }
        this.f281c = strArr;
        if (this.f281c == null || this.f281c.length < 2) {
            throw new RuntimeException("Not enough waypoints");
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: d */
    public Location m300d() {
        if (this.f288j == null) {
            this.f288j = m303g();
            this.f289k = m303g();
            m302f();
        } else if (this.f285g == this.f284f) {
            this.f288j = this.f289k;
            this.f289k = m303g();
            m302f();
        }
        return m301e();
    }

    /* renamed from: e */
    private Location m301e() {
        Location location = new Location(this.f288j);
        location.setTime(System.currentTimeMillis());
        if (this.f285g != 0) {
            location.setLatitude(location.getLatitude() + (this.f286h * ((double) this.f285g)));
            location.setLongitude(location.getLongitude() + (this.f287i * ((double) this.f285g)));
        }
        this.f285g++;
        return location;
    }

    /* renamed from: f */
    private void m302f() {
        int ceil = (int) Math.ceil(Math.abs((this.f289k.getLatitude() - this.f288j.getLatitude()) / f278o));
        int ceil2 = (int) Math.ceil(Math.abs((this.f289k.getLongitude() - this.f288j.getLongitude()) / f278o));
        Log.d(f276m, "calculateSteps [latSteps: " + ceil + "   lonSteps:" + ceil2 + "]");
        this.f284f = Math.max(ceil, ceil2);
        this.f285g = 0;
        this.f286h = (this.f289k.getLatitude() - this.f288j.getLatitude()) / ((double) this.f284f);
        this.f287i = (this.f289k.getLongitude() - this.f288j.getLongitude()) / ((double) this.f284f);
        this.f288j.setBearing(this.f288j.bearingTo(this.f289k));
    }

    /* renamed from: g */
    private Location m303g() {
        Location location = new Location(f276m);
        String[] split = this.f281c[this.f283e].split(",");
        location.setLongitude(Double.parseDouble(split[0]));
        location.setLatitude(Double.parseDouble(split[1]));
        location.setAccuracy(5.0f);
        location.setSpeed(1.0f);
        this.f283e++;
        this.f283e %= this.f281c.length;
        return location;
    }

    /* renamed from: a */
    public void mo194a() {
        this.f282d = true;
        this.f290l.execute(new Void[0]);
    }

    /* renamed from: b */
    public void mo195b() {
        this.f282d = false;
    }
}
