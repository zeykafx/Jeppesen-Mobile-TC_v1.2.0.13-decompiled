package com.jeppesen.android.p005tc.activity;

import android.content.Context;
import android.location.Location;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.util.C0111i;
import com.jeppesen.jeppview.jtca.data.Airport;
import java.util.Collections;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.g */
public class C0065g extends ArrayAdapter {

    /* renamed from: b */
    static final Airport f357b = new Airport("No airports found", "Enter a valid airport ID or name", "", "", "");

    /* renamed from: c */
    private static final String f358c = C0065g.class.getSimpleName();

    /* renamed from: a */
    protected C0066h f359a;

    /* renamed from: d */
    private Location f360d;

    /* renamed from: e */
    private final Object f361e = new Object();

    /* renamed from: f */
    private List f362f;

    /* renamed from: g */
    private List f363g;

    public C0065g(Context context, int i, int i2, List list, Location location) {
        super(context, i, i2, list);
        this.f362f = list;
        this.f363g = this.f362f;
        this.f360d = location;
        List list2 = this.f362f;
        if (this.f360d != null && this.f362f != null && this.f362f.size() > 0) {
            int size = list2.size();
            for (int i3 = 0; i3 < size; i3++) {
                Airport airport = (Airport) list2.get(i3);
                airport.mo453a(m350a(airport));
            }
            Collections.sort(list2, Airport.f602h);
        } else if (this.f362f != null) {
            Collections.sort(list2, Airport.f601g);
        }
    }

    /* renamed from: a */
    private Float m350a(Airport airport) {
        Float valueOf = Float.valueOf(200.0f);
        try {
            return Float.valueOf((float) Math.sqrt(Math.pow(((double) airport.mo459d()) - this.f360d.getLatitude(), 2.0d) + Math.pow(((double) airport.mo461e()) - this.f360d.getLongitude(), 2.0d)));
        } catch (Exception e) {
            Log.w(f358c, e);
            return valueOf;
        }
    }

    public int getCount() {
        return this.f363g.size();
    }

    public Filter getFilter() {
        if (this.f359a == null) {
            this.f359a = new C0066h(this);
        }
        return this.f359a;
    }

    @Override // android.widget.ArrayAdapter
    public Object getItem(int i) {
        return this.f363g.get(i);
    }

    @Override // android.widget.ArrayAdapter
    public int getPosition(Object obj) {
        return this.f363g.indexOf(obj);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.getView(i, view, viewGroup);
        }
        Airport airport = (Airport) getItem(i);
        ImageView imageView = (ImageView) view.findViewById(R.id.airportlist_favIcon);
        if (imageView != null) {
            imageView.setTag(airport);
            if (C0111i.m427e(airport.mo451a())) {
                imageView.setImageResource(R.drawable.fav_on);
            } else {
                imageView.setImageResource(R.drawable.fav_off);
            }
        }
        View findViewById = view.findViewById(R.id.airportlist_icao);
        if (findViewById != null) {
            findViewById.setTag(airport);
            ((TextView) findViewById).setText(airport.mo451a());
        }
        View findViewById2 = view.findViewById(R.id.airportlist_name);
        if (findViewById2 != null) {
            findViewById2.setTag(airport);
            ((TextView) findViewById2).setText(airport.mo455b());
        }
        View findViewById3 = view.findViewById(R.id.airportlist_right_tick_button);
        if (findViewById3 != null) {
            findViewById3.setTag(airport);
        }
        if (airport.equals(f357b)) {
            imageView.setVisibility(4);
            findViewById3.setVisibility(4);
        } else {
            imageView.setVisibility(0);
            findViewById3.setVisibility(0);
        }
        return view;
    }
}
