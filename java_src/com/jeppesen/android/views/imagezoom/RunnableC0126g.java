package com.jeppesen.android.views.imagezoom;

/* renamed from: com.jeppesen.android.views.imagezoom.g */
class RunnableC0126g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View$OnTouchListenerC0125f f543a;

    RunnableC0126g(View$OnTouchListenerC0125f fVar) {
        this.f543a = fVar;
    }

    public void run() {
        View$OnTouchListenerC0125f.m516a(this.f543a, EnumC0128i.ZOOM);
        View$OnTouchListenerC0125f.m515a(this.f543a).vibrate(50);
    }
}
