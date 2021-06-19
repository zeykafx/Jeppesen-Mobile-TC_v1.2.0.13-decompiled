package com.jeppesen.android.echarts;

public class EChartsInfo {

    /* renamed from: a */
    private float f16a = Float.NaN;
    public int boundBottom = 0;
    public int boundLeft = 0;
    public int boundRight = 0;
    public int boundTop = 0;
    public boolean geoRef = false;
    public int planBottom = 0;
    public int planLeft = 0;
    public int planRight = 0;
    public int planTop = 0;
    public int profileBottom = 0;
    public int profileLeft = 0;
    public int profileRight = 0;
    public int profileTop = 0;

    public int getBoundHeight() {
        return this.boundBottom - this.boundTop;
    }

    public int getBoundWidth() {
        return this.boundRight - this.boundLeft;
    }

    public float getOptimalScale() {
        if (Float.isNaN(this.f16a)) {
            this.f16a = ((float) Math.floor((10000.0d / ((double) (Math.max(Math.max(this.boundRight - this.boundLeft, this.boundBottom - this.boundTop), Math.max(this.boundRight, this.boundBottom)) + 1))) * 100.0d)) / 100.0f;
        }
        return this.f16a;
    }
}
