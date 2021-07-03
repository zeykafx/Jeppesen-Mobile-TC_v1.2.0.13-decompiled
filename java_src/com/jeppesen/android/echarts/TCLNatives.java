package com.jeppesen.android.echarts;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.util.C0116n;
import com.jeppesen.android.util.JeppAndroidApp;
import com.jeppesen.jeppview.jtca.data.IntPoint;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.List;

public class TCLNatives {
    public static final boolean NATIVE_RENDER = true;

    /* renamed from: a */
    private static final String f18a = TCLNatives.class.getSimpleName();

    /* renamed from: b */
    private static boolean f19b = false;

    /* renamed from: c */
    private static final String f20c = "/tcl/tcl/jeppesen.tfl";

    /* renamed from: d */
    private static String f21d = "/tcl/demo_charts/sbgl101r.tcl";

    /* renamed from: e */
    private static int f22e = -1;

    /* renamed from: f */
    private static String f23f = null;

    /* renamed from: g */
    private static String f24g = null;

    /* renamed from: h */
    private static String f25h = null;

    /* renamed from: i */
    private static String f26i = null;

    /* renamed from: j */
    private static boolean f27j = false;

    /* renamed from: k */
    private static boolean f28k = false;

    /* renamed from: l */
    private static List f29l = Arrays.asList("AP");
    public static String pathToTcl = null;
    public static String rootStoragePath = null;
    public static EChartsSize tclSize = new EChartsSize();

    static {
        System.loadLibrary("jitecharts");
        System.out.println("jitecharts library loaded\n");
    }

    public static void Init() {
        if (JeppAndroidApp.debugMode) {
            Log.i(f18a, "initializing TCL library.  this must be done after gl context is available");
        }
        try {
            tclLibInit(rootStoragePath + "/tcl");
        } catch (Exception e) {
            Log.e(f18a, "Error initializing ECharts Library", e);
        }
        f22e = -1;
    }

    public static boolean currentChartIsAnOwnshipChartType() {
        return f27j;
    }

    public static String getChartType() {
        return f26i;
    }

    public static String getIcao() {
        return f23f;
    }

    public static String getIndexNumber() {
        return f24g;
    }

    public static String getProcedureId() {
        return f25h;
    }

    public static IntPoint getTclLatLonToXY(double d, double d2) {
        try {
            return tclLatLonToXY(f22e, d, d2);
        } catch (Exception e) {
            Log.e(f18a, "Oh No!", e);
            return null;
        } catch (Error e2) {
            Log.e(f18a, "Oh No!", e2);
            return null;
        }
    }

    public static boolean initAssets() {
        if (rootStoragePath == null) {
            Log.e(f18a, "initAssets() TCLNatives class has not been initialized properly");
            return false;
        }
        if (!C0116n.m461a(rootStoragePath + f20c) || f19b) {
            try {
                C0116n.m460a(new File(rootStoragePath + "/tcl/demo_charts"));
                C0116n.m459a("tcl/demo_charts", rootStoragePath + "/tcl/demo_charts");
                C0116n.m460a(new File(rootStoragePath + "/tcl/fonts"));
                C0116n.m459a("tcl/fonts", rootStoragePath + "/tcl/fonts");
                C0116n.m460a(new File(rootStoragePath + "/tcl/tcl"));
                C0116n.m459a("tcl/tcl", rootStoragePath + "/tcl/tcl");
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isTclGeoRefd() {
        return f28k;
    }

    public static void renderChart() {
        if (JeppAndroidApp.debugMode) {
            Log.i(f18a, "in renderChart doing native render for chart " + pathToTcl);
        }
        try {
            if (f22e >= 0) {
                tclClose(f22e);
                f22e = -1;
            }
            long nanoTime = JeppAndroidApp.debugMode ? System.nanoTime() : 0;
            if (pathToTcl == null) {
                f22e = tclOpen(rootStoragePath + "/" + f21d, 1, "");
            } else {
                f22e = tclOpen(pathToTcl, 1, "");
            }
            tclGetSizeAdjusted(f22e, tclSize);
            try {
                tclRender(f22e);
            } catch (EChartsError e) {
                if (MobileTC.debugMode) {
                }
                Log.e(f18a, "Oh No!", e);
            }
            if (JeppAndroidApp.debugMode) {
                Log.i(f18a, "time for tclRender is " + (((double) (System.nanoTime() - nanoTime)) / 1.0E9d));
            }
            f28k = tclIsGeoRefd(f22e);
            try {
                if (!f28k && f22e >= 0) {
                    tclClose(f22e);
                    f22e = -1;
                }
            } catch (Exception e2) {
                Log.e(f18a, "Oh No!", e2);
            }
        } catch (Exception e3) {
            Log.e(f18a, "Oh No!", e3);
            f28k = false;
            try {
                if (!f28k && f22e >= 0) {
                    tclClose(f22e);
                    f22e = -1;
                }
            } catch (Exception e4) {
                Log.e(f18a, "Oh No!", e4);
            }
        } catch (Throwable th) {
            try {
                if (!f28k && f22e >= 0) {
                    tclClose(f22e);
                    f22e = -1;
                }
            } catch (Exception e5) {
                Log.e(f18a, "Oh No!", e5);
            }
            throw th;
        }
    }

    public static void setChartType(String str) {
        f26i = str;
        f27j = f29l.contains(str);
    }

    public static void setFileName(String str) {
        f21d = str;
    }

    public static void setIcao(String str) {
        f23f = str;
    }

    public static void setIndexNumber(String str) {
        f24g = str;
    }

    public static void setPathToTcl(String str) {
        pathToTcl = str;
    }

    public static void setProcedureId(String str) {
        f25h = str;
    }

    public static void setRootStoragePath(String str) {
        rootStoragePath = str;
    }

    public static native void tclClose(int i);

    public static native void tclGetChartInfo(int i, EChartsInfo eChartsInfo);

    public static native void tclGetSizeAdjusted(int i, EChartsSize eChartsSize);

    public static native void tclGetVersion(int[] iArr);

    public static native boolean tclIsGeoRefd(int i);

    public static native IntPoint tclLatLonToXY(int i, double d, double d2);

    public static native void tclLibClose();

    public static native void tclLibInit(String str);

    public static native int tclOpen(String str, int i, String str2);

    public static native void tclRender(int i);

    public static native void tclSetBufferSize(int i, int i2);
}
