package com.jeppesen.jeppview.jtca.data;

public class IntPoint {

    /* renamed from: a */
    private int f626a;

    /* renamed from: b */
    private int f627b;

    public IntPoint() {
    }

    public IntPoint(int i, int i2) {
        this.f626a = i;
        this.f627b = i2;
    }

    /* renamed from: a */
    public int mo494a() {
        return this.f626a;
    }

    /* renamed from: a */
    public void mo495a(int i) {
        this.f626a = i;
    }

    /* renamed from: b */
    public int mo496b() {
        return this.f627b;
    }

    /* renamed from: b */
    public void mo497b(int i) {
        this.f627b = i;
    }

    public String toString() {
        return "x: " + this.f626a + "  y:" + this.f627b;
    }
}
