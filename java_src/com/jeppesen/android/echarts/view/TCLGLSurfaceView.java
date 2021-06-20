package com.jeppesen.android.echarts.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;

@SuppressLint("NewApi")
public class TCLGLSurfaceView extends GLSurfaceView {

    /* renamed from: a */
    public static boolean f34a = false;

    /* renamed from: b */
    private static final String f35b = TCLGLSurfaceView.class.getSimpleName();

    /* renamed from: c */
    private C0008a f36c = null;

    public TCLGLSurfaceView(Context context) {
        super(context);
        m55a();
    }

    public TCLGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m55a();
    }

    /* renamed from: a */
    private void m55a() {
        setEGLConfigChooser(8, 8, 8, 8, 0, 4);
        this.f36c = new C0008a();
        setRenderer(this.f36c);
        getHolder().setFormat(-3);
        setRenderMode(0);
        setZOrderOnTop(true);
    }

    public Bitmap getBitmap() {
        if (this.f36c != null) {
            return this.f36c.mo30a();
        }
        return null;
    }

    public void requestRender() {
        f34a = true;
        super.requestRender();
    }

    public void setBitmap(Bitmap bitmap) {
        if (this.f36c != null) {
            this.f36c.mo31a(bitmap);
        }
    }

    public void setMyHandler(Handler handler) {
        if (this.f36c != null) {
            this.f36c.mo32a(handler);
        } else {
            Log.e(f35b, "setMyHandler() called before TCLRenderer has been created!");
        }
    }
}
