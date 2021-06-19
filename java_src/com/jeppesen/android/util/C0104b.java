package com.jeppesen.android.util;

import com.jeppesen.jeppview.jtca.data.Chart;
import java.util.Comparator;

/* renamed from: com.jeppesen.android.util.b */
final class C0104b implements Comparator {
    C0104b() {
    }

    /* renamed from: a */
    public int compare(Chart chart, Chart chart2) {
        int indexOf = C0103a.f444b.indexOf(chart.mo480f()) - C0103a.f444b.indexOf(chart2.mo480f());
        return (indexOf == 0 && chart.mo474c().equals(chart2.mo474c())) ? chart2.mo482g().compareTo(chart.mo482g()) : indexOf;
    }
}
