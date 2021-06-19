package com.jeppesen.android.util;

import com.jeppesen.android.p005tc.service.UpdateService;

/* renamed from: com.jeppesen.android.util.h */
public class C0110h {

    /* renamed from: a */
    long f459a;

    /* renamed from: b */
    Integer f460b;

    /* renamed from: c */
    Integer f461c;

    /* renamed from: d */
    long f462d;

    /* renamed from: e */
    long f463e;

    /* renamed from: f */
    String f464f;

    public C0110h(long j) {
        this.f459a = j;
    }

    /* renamed from: g */
    private String m398g() {
        if (this.f460b == null) {
            return "null";
        }
        switch (this.f460b.intValue()) {
            case 1:
                return "STATUS_PENDING";
            case UpdateService.f407d /*{ENCODED_INT: 2}*/:
                return "STATUS_RUNNING";
            case UpdateService.f409f /*{ENCODED_INT: 4}*/:
                return "STATUS_PAUSED";
            case UpdateService.f413j /*{ENCODED_INT: 8}*/:
                return "STATUS_SUCCESSFUL";
            case 16:
                return "STATUS_FAILED";
            default:
                return "Huh?";
        }
    }

    /* renamed from: a */
    public long mo388a() {
        return this.f459a;
    }

    /* renamed from: a */
    public void mo389a(long j) {
        this.f459a = j;
    }

    /* renamed from: a */
    public void mo390a(Integer num) {
        this.f460b = num;
    }

    /* renamed from: a */
    public void mo391a(String str) {
        this.f464f = str;
    }

    /* renamed from: b */
    public Integer mo392b() {
        return this.f460b;
    }

    /* renamed from: b */
    public void mo393b(long j) {
        this.f462d = j;
    }

    /* renamed from: b */
    public void mo394b(Integer num) {
        this.f461c = num;
    }

    /* renamed from: c */
    public long mo395c() {
        return this.f462d;
    }

    /* renamed from: c */
    public void mo396c(long j) {
        this.f463e = j;
    }

    /* renamed from: d */
    public Integer mo397d() {
        return this.f461c;
    }

    /* renamed from: e */
    public String mo398e() {
        return this.f464f;
    }

    /* renamed from: f */
    public long mo399f() {
        return this.f463e;
    }

    public String toString() {
        return "[" + this.f459a + ", " + this.f464f + ", " + m398g() + ", " + this.f461c + ", " + this.f462d + "/" + this.f463e + "] ";
    }
}
