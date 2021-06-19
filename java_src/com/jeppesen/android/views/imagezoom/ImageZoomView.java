package com.jeppesen.android.views.imagezoom;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.location.Location;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.jeppesen.android.echarts.TCLNatives;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.data.IntPoint;
import java.util.Observable;
import java.util.Observer;

public class ImageZoomView extends ImageView implements Observer {

    /* renamed from: a */
    private static final String f477a = ImageZoomView.class.getSimpleName();

    /* renamed from: b */
    private C0121b f478b;

    /* renamed from: c */
    private View$OnTouchListenerC0125f f479c;

    /* renamed from: d */
    private final Paint f480d = new Paint(2);

    /* renamed from: e */
    private final Rect f481e = new Rect();

    /* renamed from: f */
    private final Rect f482f = new Rect();

    /* renamed from: g */
    private final C0120a f483g = new C0120a();

    /* renamed from: h */
    private Bitmap f484h;

    /* renamed from: i */
    private C0129j f485i;

    /* renamed from: j */
    private int f486j = 0;

    /* renamed from: k */
    private int f487k = 0;

    /* renamed from: l */
    private Context f488l;

    /* renamed from: m */
    private Bitmap f489m;

    /* renamed from: n */
    private Bitmap f490n;

    /* renamed from: o */
    private Bitmap f491o;

    /* renamed from: p */
    private IntPoint f492p;

    public ImageZoomView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f488l = context;
        this.f478b = new C0121b();
        this.f479c = new View$OnTouchListenerC0125f(this.f488l);
    }

    /* renamed from: a */
    public void mo406a() {
        if (this.f484h != null) {
            this.f484h.recycle();
            this.f484h = null;
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void mo407a(Canvas canvas, float f, float f2) {
        IntPoint tclLatLonToXY;
        Location g = MobileTC.m83g();
        if (g != null && g.hasAccuracy() && g.getAccuracy() <= 17.0f) {
            if ((!g.hasSpeed() || g.getSpeed() <= 20.5f) && (tclLatLonToXY = TCLNatives.getTclLatLonToXY(g.getLatitude(), g.getLongitude())) != null) {
                Matrix matrix = new Matrix();
                matrix.postScale(f - 0.15f, f2 - 0.15f);
                if (((double) g.getSpeed()) <= 0.1d || !g.hasBearing()) {
                    this.f491o = Bitmap.createBitmap(this.f490n, 0, 0, this.f490n.getWidth(), this.f490n.getHeight(), matrix, false);
                } else {
                    matrix.postRotate(g.getBearing(), (float) this.f492p.mo494a(), (float) this.f492p.mo496b());
                    this.f491o = Bitmap.createBitmap(this.f489m, 0, 0, this.f489m.getWidth(), this.f489m.getHeight(), matrix, false);
                }
                float width = ((float) this.f482f.width()) / ((float) this.f481e.width());
                canvas.drawBitmap(this.f491o, ((float) ((this.f482f.left + ((int) (((float) (tclLatLonToXY.mo494a() - this.f481e.left)) * width))) - (this.f491o.getWidth() / 2))) + (10.0f * width), (float) ((((int) (width * ((float) (tclLatLonToXY.mo496b() - this.f481e.top)))) + this.f482f.top) - (this.f491o.getHeight() / 2)), (Paint) null);
            }
        }
    }

    /* renamed from: a */
    public void mo408a(boolean z) {
        if (z) {
            setOnTouchListener(this.f479c);
        } else {
            setOnTouchListener(null);
        }
    }

    /* renamed from: b */
    public void mo409b() {
        this.f479c.mo439a(this.f478b);
        setZoomState(this.f478b.mo419a());
        this.f478b.mo422a(getAspectQuotient());
        this.f489m = BitmapFactory.decodeResource(getResources(), R.drawable.ownship_active);
        this.f492p = new IntPoint(this.f489m.getWidth() / 2, this.f489m.getHeight() / 2);
        this.f490n = BitmapFactory.decodeResource(getResources(), R.drawable.ownship_no_heading);
    }

    /* renamed from: c */
    public void mo410c() {
        if (this.f478b != null && this.f478b.mo419a() != null) {
            this.f478b.mo419a().mo447c(0.5f);
            this.f478b.mo419a().mo448d(0.5f);
            this.f478b.mo419a().mo449e(1.0f);
            this.f478b.mo419a().notifyObservers();
        }
    }

    public C0120a getAspectQuotient() {
        return this.f483g;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.f484h == null || this.f485i == null || this.f484h.isRecycled()) {
            super.onDraw(canvas);
            return;
        }
        float a = this.f483g.mo417a();
        int width = getWidth();
        int height = getHeight();
        float a2 = this.f485i.mo442a();
        float b = this.f485i.mo444b();
        float a3 = (this.f485i.mo443a(a) * ((float) width)) / ((float) this.f486j);
        float b2 = (this.f485i.mo445b(a) * ((float) height)) / ((float) this.f487k);
        float f = getResources().getDisplayMetrics().density;
        int i = (int) ((f * 3.0f) + 0.5f);
        this.f481e.left = (int) ((a2 * ((float) this.f486j)) - (((float) width) / (a3 * 2.0f)));
        this.f481e.top = (int) ((b * ((float) this.f487k)) - (((float) height) / (b2 * 2.0f)));
        this.f481e.right = (int) ((((float) width) / a3) + ((float) this.f481e.left));
        this.f481e.bottom = (int) ((((float) height) / b2) + ((float) this.f481e.top));
        this.f482f.left = getLeft() + 5;
        this.f482f.right = getRight() - 5;
        this.f482f.top = (getTop() - ((int) ((47.0f * f) + 0.5f))) + i;
        this.f482f.bottom = (getBottom() - ((int) ((55.0f * f) + 0.5f))) - i;
        if (this.f481e.left < 0) {
            Rect rect = this.f482f;
            rect.left = (int) (((float) rect.left) + (((float) (-this.f481e.left)) * a3));
            this.f481e.left = 0;
        }
        if (this.f481e.right > this.f486j) {
            Rect rect2 = this.f482f;
            rect2.right = (int) (((float) rect2.right) - (((float) (this.f481e.right - this.f486j)) * a3));
            this.f481e.right = this.f486j;
        }
        if (this.f481e.top < 0) {
            Rect rect3 = this.f482f;
            rect3.top = (int) (((float) rect3.top) + (((float) (-this.f481e.top)) * b2));
            this.f481e.top = 0;
        }
        if (this.f481e.bottom > this.f487k) {
            Rect rect4 = this.f482f;
            rect4.bottom = (int) (((float) rect4.bottom) - (((float) (this.f481e.bottom - this.f487k)) * b2));
            this.f481e.bottom = this.f487k;
        }
        canvas.drawBitmap(this.f484h, this.f481e, this.f482f, this.f480d);
        if (MobileTC.m84h() && TCLNatives.currentChartIsAnOwnshipChartType() && TCLNatives.isTclGeoRefd()) {
            mo407a(canvas, a3, b2);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f484h != null) {
            this.f483g.mo418a((float) (i3 - i), (float) (i4 - i2), (float) this.f484h.getWidth(), (float) this.f484h.getHeight());
            this.f483g.notifyObservers();
        }
    }

    public void setImage(Bitmap bitmap) {
        this.f484h = bitmap;
        if (this.f484h != null) {
            this.f486j = this.f484h.getWidth();
            this.f487k = this.f484h.getHeight();
            this.f483g.mo418a((float) getWidth(), (float) getHeight(), (float) this.f484h.getWidth(), (float) this.f484h.getHeight());
            this.f483g.notifyObservers();
        }
        invalidate();
    }

    public void setZoomState(C0129j jVar) {
        if (this.f485i != null) {
            this.f485i.deleteObserver(this);
        }
        this.f485i = jVar;
        this.f485i.addObserver(this);
        invalidate();
    }

    public void update(Observable observable, Object obj) {
        invalidate();
    }
}
