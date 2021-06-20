package com.jeppesen.android.echarts.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.os.Debug;
import android.os.Handler;
import android.util.Log;
import com.jeppesen.android.echarts.TCLNatives;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.util.JeppAndroidApp;
import java.nio.IntBuffer;
import java.text.DecimalFormat;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11ExtensionPack;

/* renamed from: com.jeppesen.android.echarts.view.a */
@SuppressLint("NewApi")
public class C0008a implements GLSurfaceView.Renderer {

    /* renamed from: a */
    private static final String f37a = C0008a.class.getSimpleName();

    /* renamed from: l */
    private static final boolean f38l = false;

    /* renamed from: b */
    private boolean f39b;

    /* renamed from: c */
    private boolean f40c;

    /* renamed from: d */
    private boolean f41d;

    /* renamed from: e */
    private boolean f42e = true;

    /* renamed from: f */
    private int f43f;

    /* renamed from: g */
    private int f44g;

    /* renamed from: h */
    private int f45h = 2048;

    /* renamed from: i */
    private int f46i = 2048;

    /* renamed from: j */
    private Handler f47j = null;

    /* renamed from: k */
    private Bitmap f48k = null;

    /* renamed from: a */
    private int m56a(GL10 gl10, int i, int i2, int i3) {
        GL11ExtensionPack gL11ExtensionPack = (GL11ExtensionPack) gl10;
        int[] iArr = new int[1];
        gL11ExtensionPack.glGenFramebuffersOES(1, iArr, 0);
        int i4 = iArr[0];
        gL11ExtensionPack.glBindFramebufferOES(36160, i4);
        int[] iArr2 = new int[1];
        gL11ExtensionPack.glGenRenderbuffersOES(1, iArr2, 0);
        int i5 = iArr2[0];
        int[] iArr3 = new int[1];
        gL11ExtensionPack.glGenRenderbuffersOES(1, iArr3, 0);
        int i6 = iArr3[0];
        if (this.f40c) {
            gL11ExtensionPack.glBindRenderbufferOES(36161, i5);
            gL11ExtensionPack.glRenderbufferStorageOES(36161, 36168, i, i2);
            gL11ExtensionPack.glFramebufferRenderbufferOES(36160, 36128, 36161, i5);
        } else {
            gL11ExtensionPack.glBindRenderbufferOES(36161, i6);
            gL11ExtensionPack.glRenderbufferStorageOES(36161, 35056, i, i2);
            gL11ExtensionPack.glBindRenderbufferOES(36161, i5);
            gL11ExtensionPack.glRenderbufferStorageOES(36161, 35056, i, i2);
            gL11ExtensionPack.glFramebufferRenderbufferOES(36160, 36096, 36161, i6);
            gL11ExtensionPack.glFramebufferRenderbufferOES(36160, 36128, 36161, i5);
        }
        gL11ExtensionPack.glFramebufferTexture2DOES(36160, 36064, 3553, i3, 0);
        int glCheckFramebufferStatusOES = gL11ExtensionPack.glCheckFramebufferStatusOES(36160);
        if (glCheckFramebufferStatusOES != 36053) {
            throw new RuntimeException("Framebuffer is not complete: " + Integer.toHexString(glCheckFramebufferStatusOES));
        }
        gL11ExtensionPack.glBindFramebufferOES(36160, 0);
        mo34a((GL) gl10);
        return i4;
    }

    /* renamed from: a */
    public static void m57a(Class cls) {
        Double valueOf = Double.valueOf(new Double((double) Debug.getNativeHeapAllocatedSize()).doubleValue() / new Double(1048576.0d).doubleValue());
        Double d = new Double(((double) Debug.getNativeHeapSize()) / 1048576.0d);
        Double d2 = new Double(((double) Debug.getNativeHeapFreeSize()) / 1048576.0d);
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setMaximumFractionDigits(2);
        decimalFormat.setMinimumFractionDigits(2);
        Log.d("native_mem", "debug. =================================");
        Log.d("native_mem", "debug.heap native: allocated " + decimalFormat.format(valueOf) + "MB of " + decimalFormat.format(d) + "MB (" + decimalFormat.format(d2) + "MB free) in [" + cls.getName().replaceAll("com.myapp.android.", "") + "]");
        Log.d("native_mem", "debug.memory: allocated: " + decimalFormat.format(new Double((double) (Runtime.getRuntime().totalMemory() / 1048576))) + "MB of " + decimalFormat.format(new Double((double) (Runtime.getRuntime().maxMemory() / 1048576))) + "MB (" + decimalFormat.format(new Double((double) (Runtime.getRuntime().freeMemory() / 1048576))) + "MB free)");
        System.gc();
        System.gc();
    }

    /* renamed from: a */
    private boolean m58a(GL10 gl10) {
        return m59a(gl10, "GL_OES_framebuffer_object");
    }

    /* renamed from: a */
    private boolean m59a(GL10 gl10, String str) {
        return this.f42e && (" " + gl10.glGetString(7939) + " ").contains(" " + str + " ");
    }

    /* renamed from: b */
    private int m60b(GL10 gl10, int i, int i2) {
        int[] iArr = new int[1];
        gl10.glGenTextures(1, iArr, 0);
        int i3 = iArr[0];
        gl10.glBindTexture(3553, i3);
        gl10.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        gl10.glTexParameterf(3553, 10241, 9728.0f);
        gl10.glTexParameterf(3553, 10240, 9729.0f);
        gl10.glTexParameterx(3553, 10242, 10497);
        gl10.glTexParameterx(3553, 10243, 10497);
        mo34a((GL) gl10);
        return i3;
    }

    /* renamed from: b */
    private boolean m61b(GL10 gl10) {
        return m59a(gl10, "GL_OES_stencil8");
    }

    /* renamed from: c */
    private boolean m62c(GL10 gl10) {
        return m59a(gl10, "GL_OES_packed_depth_stencil");
    }

    /* renamed from: a */
    public Bitmap mo30a() {
        return this.f48k;
    }

    /* renamed from: a */
    public void mo31a(Bitmap bitmap) {
        this.f48k = bitmap;
    }

    /* renamed from: a */
    public void mo32a(Handler handler) {
        this.f47j = handler;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo33a(GL10 gl10, int i, int i2) {
        IntBuffer intBuffer = null;
        if (this.f48k != null) {
            this.f48k.recycle();
            this.f48k = null;
            System.gc();
        }
        int i3 = i * i2;
        try {
            intBuffer = IntBuffer.allocate(i3);
        } catch (OutOfMemoryError e) {
            if (MobileTC.f436a) {
                m57a(getClass());
            }
            System.gc();
            Runtime.getRuntime().gc();
            IntBuffer.allocate(i3);
        }
        gl10.glReadPixels(0, this.f46i - i2, i, i2, 6408, 5121, intBuffer);
        int[] array = intBuffer.array();
        for (int i4 = 0; i4 < array.length; i4++) {
            int i5 = array[i4];
            array[i4] = ((i5 & 16711680) >> 16) | (-16711936 & i5) | ((i5 & 255) << 16);
        }
        if (MobileTC.f436a) {
            m57a(getClass());
        }
        this.f48k = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        this.f48k.setPixels(array, i3 - i, -i, 0, 0, i, i2);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo34a(GL gl) {
        int glGetError = ((GL10) gl).glGetError();
        if (glGetError != 0) {
            Log.e(f37a, "checkGLError() GLError 0x" + Integer.toHexString(glGetError));
        }
    }

    public void onDrawFrame(GL10 gl10) {
        if (JeppAndroidApp.f436a) {
            Log.i(f37a, "onDrawFrame() called in TCLRenderer");
        }
        if (TCLGLSurfaceView.f34a) {
            TCLGLSurfaceView.f34a = false;
            if (this.f39b) {
                if (JeppAndroidApp.f436a) {
                    Log.i(f37a, "binding framebuffer in onDrawFrame()");
                }
                ((GL11ExtensionPack) gl10).glBindFramebufferOES(36160, this.f44g);
            }
            long j = 0;
            if (JeppAndroidApp.f436a) {
                j = System.nanoTime();
            }
            TCLNatives.renderChart();
            if (JeppAndroidApp.f436a) {
                Log.i(f37a, "time to render to opengl is " + (((double) (System.nanoTime() - j)) / 1.0E9d));
            }
            long nanoTime = JeppAndroidApp.f436a ? System.nanoTime() : j;
            try {
                mo33a(gl10, TCLNatives.tclSize.width, TCLNatives.tclSize.height);
            } catch (OutOfMemoryError e) {
                Log.e(f37a, "OutOfMemoryError failure in getBitmap() for ICAO: " + TCLNatives.getIcao() + " Index number: " + TCLNatives.getIndexNumber() + " Procedure ID: " + TCLNatives.getProcedureId(), e);
                Log.e(f37a, "Chart size: width:" + TCLNatives.tclSize.width + " height: " + TCLNatives.tclSize.height);
            }
            if (JeppAndroidApp.f436a) {
                Log.i(f37a, "time to generate bitmap is " + (((double) (System.nanoTime() - nanoTime)) / 1.0E9d));
            }
            if (this.f39b) {
                ((GL11ExtensionPack) gl10).glBindFramebufferOES(36160, 0);
            }
            if (this.f47j == null) {
                Log.w(f37a, "Handler has not been set in onDrawFrame");
                return;
            }
            if (JeppAndroidApp.f436a) {
                Log.i(f37a, "sending message to ui thread in onDrawFrame()");
            }
            this.f47j.sendMessage(this.f47j.obtainMessage());
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        if (JeppAndroidApp.f436a) {
            Log.i(f37a, "onSurfaceCreated called, initializing tcl library and framebuffer");
        }
        try {
            this.f39b = m58a(gl10);
            if (this.f39b) {
                this.f40c = m61b(gl10);
                this.f41d = m62c(gl10);
                this.f43f = m60b(gl10, this.f45h, this.f46i);
                this.f44g = m56a(gl10, this.f45h, this.f46i, this.f43f);
            }
            if (this.f39b) {
                gl10.glViewport(0, 0, this.f45h, this.f46i);
                TCLNatives.tclSetBufferSize(this.f45h, this.f46i);
            } else {
                gl10.glViewport(0, 0, 768, 768);
                TCLNatives.tclSetBufferSize(768, 768);
            }
        } catch (Exception e) {
            Log.e(f37a, "onSurfaceCreated() Oh No!", e);
            if (this.f39b) {
                gl10.glViewport(0, 0, this.f45h, this.f46i);
                TCLNatives.tclSetBufferSize(this.f45h, this.f46i);
            } else {
                gl10.glViewport(0, 0, 768, 768);
                TCLNatives.tclSetBufferSize(768, 768);
            }
        } catch (Throwable th) {
            if (this.f39b) {
                gl10.glViewport(0, 0, this.f45h, this.f46i);
                TCLNatives.tclSetBufferSize(this.f45h, this.f46i);
            } else {
                gl10.glViewport(0, 0, 768, 768);
                TCLNatives.tclSetBufferSize(768, 768);
            }
            throw th;
        }
        try {
            TCLNatives.Init();
        } catch (Exception e2) {
            Log.e(f37a, "Oh No!", e2);
        }
    }
}
