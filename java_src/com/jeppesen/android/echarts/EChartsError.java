package com.jeppesen.android.echarts;

public class EChartsError extends Exception {
    public static final int TCLOK = 1;

    /* renamed from: a */
    private static final long f14a = -1194089955908028383L;

    /* renamed from: b */
    private int f15b = 1;

    EChartsError(int i) {
        this.f15b = i;
    }

    EChartsError(int i, String str) {
        super(str);
        this.f15b = i;
    }

    public final int getCode() {
        return this.f15b;
    }

    public final int getError() {
        if (this.f15b > 0) {
            return 1;
        }
        return -((-this.f15b) & 255);
    }

    public final int getWrapperID() {
        if (this.f15b > 0) {
            return 0;
        }
        return (-this.f15b) >> 8;
    }

    public final boolean isError() {
        return 1 != getError();
    }
}
