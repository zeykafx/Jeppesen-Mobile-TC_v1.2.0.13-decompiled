package com.jeppesen.android.views.imagezoom;

import android.content.Context;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Vibrator;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.jeppesen.android.p005tc.service.UpdateService;

/* renamed from: com.jeppesen.android.views.imagezoom.f */
public class View$OnTouchListenerC0125f implements View.OnTouchListener {

    /* renamed from: c */
    private static final long f520c = 50;

    /* renamed from: q */
    private static final int f521q = 3;

    /* renamed from: a */
    PointF f522a = new PointF();

    /* renamed from: b */
    float f523b = 1.0f;

    /* renamed from: d */
    private EnumC0128i f524d = EnumC0128i.UNDEFINED;

    /* renamed from: e */
    private C0121b f525e;

    /* renamed from: f */
    private float f526f;

    /* renamed from: g */
    private float f527g;

    /* renamed from: h */
    private float f528h;

    /* renamed from: i */
    private float f529i;

    /* renamed from: j */
    private VelocityTracker f530j;

    /* renamed from: k */
    private final int f531k;

    /* renamed from: l */
    private final int f532l = ViewConfiguration.getLongPressTimeout();

    /* renamed from: m */
    private final Vibrator f533m;

    /* renamed from: n */
    private final int f534n;

    /* renamed from: o */
    private final boolean f535o = true;

    /* renamed from: p */
    private final Handler f536p;

    /* renamed from: r */
    private MotionEvent f537r;

    /* renamed from: s */
    private MotionEvent f538s;

    /* renamed from: t */
    private final int f539t;

    /* renamed from: u */
    private int f540u;

    /* renamed from: v */
    private int f541v;

    /* renamed from: w */
    private final Runnable f542w = new RunnableC0126g(this);

    public View$OnTouchListenerC0125f(Context context) {
        this.f531k = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f534n = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.f533m = (Vibrator) context.getSystemService("vibrator");
        this.f539t = ViewConfiguration.getDoubleTapTimeout();
        this.f536p = new HandlerC0127h(this);
        this.f541v = ViewConfiguration.get(context).getScaledDoubleTapSlop();
        this.f540u = this.f541v * this.f541v;
    }

    /* renamed from: a */
    private float m513a(PointF pointF, PointF pointF2) {
        float f = pointF.x - pointF2.x;
        float f2 = pointF.y - pointF2.y;
        return FloatMath.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: a */
    private float m514a(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return FloatMath.sqrt((x * x) + (y * y));
    }

    /* renamed from: a */
    static /* synthetic */ Vibrator m515a(View$OnTouchListenerC0125f fVar) {
        return fVar.f533m;
    }

    /* renamed from: a */
    static /* synthetic */ EnumC0128i m516a(View$OnTouchListenerC0125f fVar, EnumC0128i iVar) {
        fVar.f524d = iVar;
        return iVar;
    }

    /* renamed from: a */
    private void m517a(PointF pointF, MotionEvent motionEvent) {
        pointF.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
    }

    /* renamed from: a */
    private boolean m518a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
        if (motionEvent3.getEventTime() - motionEvent2.getEventTime() > ((long) this.f539t)) {
            return false;
        }
        int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
        int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
        return (x * x) + (y * y) < this.f540u;
    }

    /* renamed from: a */
    public void mo439a(C0121b bVar) {
        this.f525e = bVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        float f = 1.0f;
        int action = motionEvent.getAction() & 255;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.f530j == null) {
            this.f530j = VelocityTracker.obtain();
        }
        this.f530j.addMovement(motionEvent);
        switch (action) {
            case UpdateService.f405b:
                boolean hasMessages = this.f536p.hasMessages(3);
                if (hasMessages) {
                    this.f536p.removeMessages(3);
                }
                if (this.f537r == null || this.f538s == null || !hasMessages || !m518a(this.f537r, this.f538s, motionEvent)) {
                    this.f536p.sendEmptyMessageDelayed(3, (long) this.f539t);
                } else {
                    ((ImageZoomView) view).mo410c();
                    this.f525e.mo425c();
                }
                this.f537r = MotionEvent.obtain(motionEvent);
                this.f525e.mo423b();
                this.f528h = x;
                this.f529i = y;
                this.f526f = x;
                this.f527g = y;
                return true;
            case 1:
                this.f538s = MotionEvent.obtain(motionEvent);
                if (this.f524d == EnumC0128i.PAN) {
                    this.f530j.computeCurrentVelocity(1000, (float) this.f534n);
                    this.f525e.mo424b((-this.f530j.getXVelocity()) / ((float) view.getWidth()), (-this.f530j.getYVelocity()) / ((float) view.getHeight()));
                } else {
                    this.f525e.mo424b(0.0f, 0.0f);
                }
                this.f530j.recycle();
                this.f530j = null;
                view.removeCallbacks(this.f542w);
                this.f524d = EnumC0128i.UNDEFINED;
                return true;
            case UpdateService.f407d:
                float width = (x - this.f526f) / ((float) view.getWidth());
                float height = (y - this.f527g) / ((float) view.getHeight());
                if (motionEvent.getPointerCount() == 2) {
                    f = m514a(motionEvent);
                }
                float height2 = (f - this.f523b) / ((float) view.getHeight());
                if (this.f524d == EnumC0128i.ZOOM) {
                    getClass();
                    this.f525e.mo421a((float) Math.pow(20.0d, (double) height2), this.f528h / ((float) view.getWidth()), this.f529i / ((float) view.getHeight()));
                } else if (this.f524d == EnumC0128i.PAN) {
                    this.f525e.mo420a(-width, -height);
                } else {
                    float f2 = this.f528h - x;
                    float f3 = this.f529i - y;
                    if (((float) Math.sqrt((double) ((f2 * f2) + (f3 * f3)))) >= ((float) this.f531k)) {
                        view.removeCallbacks(this.f542w);
                        this.f524d = EnumC0128i.PAN;
                    }
                }
                this.f526f = x;
                this.f527g = y;
                this.f523b = f;
                return true;
            case 3:
            case UpdateService.f409f:
            default:
                this.f530j.recycle();
                this.f530j = null;
                view.removeCallbacks(this.f542w);
                this.f524d = EnumC0128i.UNDEFINED;
                return true;
            case UpdateService.f410g:
                if (motionEvent.getPointerCount() != 2) {
                    return true;
                }
                this.f523b = m514a(motionEvent);
                if (this.f523b <= 1.0f) {
                    return true;
                }
                m517a(this.f522a, motionEvent);
                this.f528h = this.f522a.x;
                this.f529i = this.f522a.y;
                this.f526f = this.f522a.x;
                this.f527g = this.f522a.y;
                this.f524d = EnumC0128i.ZOOM;
                return true;
        }
    }
}
