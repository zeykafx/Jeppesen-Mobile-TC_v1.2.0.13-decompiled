package com.jeppesen.android.p005tc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.Filterable;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.jeppesen.android.echarts.TCLNatives;
import com.jeppesen.android.echarts.view.TCLGLSurfaceView;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.android.p005tc.activity.ApplicationPreferencesActivity;
import com.jeppesen.android.p005tc.activity.p007a.C0014a;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.android.p005tc.service.UpdateService;
import com.jeppesen.android.util.AsyncTaskC0114l;
import com.jeppesen.android.util.C0106d;
import com.jeppesen.android.util.C0111i;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.C0116n;
import com.jeppesen.android.util.JeppAndroidApp;
import com.jeppesen.android.views.imagezoom.ImageZoomView;
import com.jeppesen.jeppview.jtca.JITHandler;
import com.jeppesen.jeppview.jtca.data.Airport;
import com.jeppesen.jeppview.jtca.data.Chart;
import com.jeppesen.jeppview.jtca.data.ChartGroupDivider;
import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

/* renamed from: com.jeppesen.android.tc.activity.ChartDisplayActivity */
public class ChartDisplayActivity extends Activity implements TextWatcher {

    /* renamed from: V */
    private static final String f136V = ChartDisplayActivity.class.getSimpleName();

    /* renamed from: aA */
    private static final int f137aA;

    /* renamed from: aB */
    private static final int f138aB;

    /* renamed from: ad */
    private static final int f139ad;

    /* renamed from: ae */
    private static final int f140ae;

    /* renamed from: af */
    private static final int f141af;

    /* renamed from: ag */
    private static final int f142ag;

    /* renamed from: ah */
    private static final int f143ah;

    /* renamed from: ai */
    private static final int f144ai;

    /* renamed from: aj */
    private static ImageButton f145aj;

    /* renamed from: ak */
    private static ImageButton f146ak;

    /* renamed from: al */
    private static ImageView f147al;

    /* renamed from: A */
    View f148A;

    /* renamed from: B */
    PopupWindow f149B;

    /* renamed from: C */
    PopupWindow f150C;

    /* renamed from: D */
    View f151D;

    /* renamed from: E */
    View f152E;

    /* renamed from: F */
    View f153F;

    /* renamed from: G */
    PopupWindow f154G;

    /* renamed from: H */
    PopupWindow f155H;

    /* renamed from: I */
    View f156I;

    /* renamed from: J */
    View f157J;

    /* renamed from: K */
    View f158K;

    /* renamed from: L */
    PopupWindow f159L;

    /* renamed from: M */
    View f160M;

    /* renamed from: N */
    PopupWindow f161N;

    /* renamed from: O */
    View f162O;

    /* renamed from: P */
    final Handler f163P = new HandlerC0075q(this);

    /* renamed from: Q */
    C0014a f164Q;

    /* renamed from: R */
    private LocationListener f165R = new C0082x(this);

    /* renamed from: S */
    private View.OnClickListener f166S = new View$OnClickListenerC0083y(this);

    /* renamed from: T */
    private Handler f167T = new Handler();

    /* renamed from: U */
    private Runnable f168U = new RunnableC0074p(this);

    /* renamed from: W */
    private ImageZoomView f169W;

    /* renamed from: X */
    private boolean f170X = false;

    /* renamed from: Y */
    private TCLGLSurfaceView f171Y;

    /* renamed from: Z */
    private TextView f172Z;

    /* renamed from: a */
    LayoutInflater f173a;

    /* renamed from: aC */
    private final String f174aC = "eula_";

    /* renamed from: aD */
    private String f175aD;

    /* renamed from: aE */
    private SharedPreferences f176aE = null;

    /* renamed from: aF */
    private final String f177aF = "quickTips_";

    /* renamed from: aG */
    private String f178aG;

    /* renamed from: aa */
    private long f179aa = 0;

    /* renamed from: ab */
    private String f180ab;

    /* renamed from: ac */
    private PopupWindow f181ac;

    /* renamed from: am */
    private List f182am = null;

    /* renamed from: an */
    private Iterator f183an = null;

    /* renamed from: ao */
    private Airport f184ao = null;

    /* renamed from: ap */
    private List f185ap = null;

    /* renamed from: aq */
    private Iterator f186aq = null;

    /* renamed from: ar */
    private Chart f187ar = null;

    /* renamed from: as */
    private boolean f188as = true;

    /* renamed from: at */
    private boolean f189at = true;

    /* renamed from: au */
    private int f190au = 0;

    /* renamed from: av */
    private String f191av = "/mnt/sdcard/charts";

    /* renamed from: aw */
    private boolean f192aw = false;

    /* renamed from: ax */
    private boolean f193ax = false;

    /* renamed from: ay */
    private boolean f194ay = false;

    /* renamed from: az */
    private String f195az;

    /* renamed from: b */
    InputMethodManager f196b;

    /* renamed from: c */
    PopupWindow f197c;

    /* renamed from: d */
    ViewSwitcher f198d;

    /* renamed from: e */
    int f199e = 0;

    /* renamed from: f */
    String f200f;

    /* renamed from: g */
    ListView f201g;

    /* renamed from: h */
    EditText f202h;

    /* renamed from: i */
    View f203i;

    /* renamed from: j */
    int f204j;

    /* renamed from: k */
    int f205k;

    /* renamed from: l */
    int f206l;

    /* renamed from: m */
    int f207m;

    /* renamed from: n */
    int f208n;

    /* renamed from: o */
    int f209o;

    /* renamed from: p */
    ListView f210p;

    /* renamed from: q */
    ListView f211q;

    /* renamed from: r */
    boolean f212r;

    /* renamed from: s */
    Location f213s;

    /* renamed from: t */
    AsyncTaskC0021ae f214t;

    /* renamed from: u */
    PopupWindow f215u;

    /* renamed from: v */
    PopupWindow f216v;

    /* renamed from: w */
    View f217w;

    /* renamed from: x */
    View f218x;

    /* renamed from: y */
    View f219y;

    /* renamed from: z */
    PopupWindow f220z;

    /* renamed from: a */
    private Dialog m185a(String str) {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.eula_dialog, (ViewGroup) null);
        ((WebView) inflate.findViewById(R.id.EulaDialogWebView)).loadUrl("file:///android_asset/appEula.html");
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setIcon(R.drawable.icon_about);
        builder.setView(inflate);
        builder.setTitle(str);
        builder.setCancelable(false);
        builder.setPositiveButton(R.string.eula_dialog_accept, new DialogInterface$OnClickListenerC0080v(this));
        builder.setNegativeButton(R.string.eula_dialog_decline, new DialogInterface$OnClickListenerC0081w(this));
        return builder.create();
    }

    /* access modifiers changed from: public */
    /* renamed from: a */
    private void m191a(PopupWindow popupWindow, int i, View view) {
        float f = getResources().getDisplayMetrics().density;
        int maxAvailableHeight = popupWindow.getMaxAvailableHeight(view);
        if (maxAvailableHeight < 620) {
            popupWindow.update((int) (f * ((float) i)), maxAvailableHeight);
        }
    }

    /* access modifiers changed from: public */
    /* renamed from: a */
    private void m194a(Chart chart, boolean z) {
        C0034ar arVar;
        int position;
        if (chart != null && (position = (arVar = (C0034ar) this.f211q.getAdapter()).getPosition(chart)) >= 0) {
            arVar.mo249a(chart);
            if (z) {
                this.f211q.smoothScrollToPositionFromTop(position, 150);
            } else {
                this.f211q.invalidateViews();
            }
        }
    }

    /* renamed from: a */
    public static void m195a(boolean z) {
        if (z) {
            if (f146ak != null && f147al != null) {
                f146ak.setImageResource(R.drawable.btnsettingsupdate);
                f146ak.invalidate();
                f147al.setImageResource(R.drawable.iconupdates_badge);
                f147al.invalidate();
            }
        } else if (f146ak != null && f147al != null) {
            f146ak.setImageResource(R.drawable.btnsettings);
            f146ak.invalidate();
            f147al.setImageResource(R.drawable.iconupdates);
            f147al.invalidate();
        }
    }

    /* renamed from: a */
    private boolean m198a(Chart chart) {
        if (chart == null) {
            return false;
        }
        if (C0111i.m421c(chart)) {
            C0111i.m426e(chart);
            C0111i.m415a(getApplicationContext());
            return false;
        }
        C0111i.m424d(chart);
        C0111i.m415a(getApplicationContext());
        return true;
    }

    /* access modifiers changed from: public */
    /* renamed from: b */
    private void m204b(Chart chart) {
        Log.d(f136V, "selectedChart: " + chart.mo472b());
        try {
            String b = JITHandler.m532b(chart);
            if (b == null) {
                MobileTC.m70a(this, "Unable to extract Chart " + chart.mo472b() + " for Airport " + chart.mo469a() + " from current database");
                return;
            }
            if (JeppAndroidApp.f436a) {
                this.f179aa = System.nanoTime();
            }
            m229s();
            this.f180ab = chart.mo472b();
            TCLNatives.setPathToTcl(b);
            TCLNatives.setIcao(chart.mo469a());
            TCLNatives.setIndexNumber(chart.mo474c());
            TCLNatives.setProcedureId(chart.mo472b());
            TCLNatives.setChartType(chart.mo476d());
            MobileTC.m88l();
            this.f171Y.requestRender();
            this.f187ar = chart;
            mo156g();
            ImageView imageView = (ImageView) findViewById(R.id.imageButton3);
            if (C0111i.m421c(this.f187ar)) {
                imageView.setImageResource(R.drawable.titlechartfavorite_on);
            } else {
                imageView.setImageResource(R.drawable.titlechartfavorite);
            }
        } catch (C0106d e) {
            MobileTC.m70a(this, getString(R.string.update_status_charts_expired));
        }
    }

    /* access modifiers changed from: public */
    /* renamed from: n */
    private void m219n() {
        List c;
        if (this.f199e == 0 && !this.f212r) {
            c = C0111i.m422d(this.f184ao.mo451a());
        } else if (this.f199e != 3 || this.f212r) {
            c = C0111i.m419c(this.f184ao.mo451a());
        } else {
            List d = C0111i.m422d(this.f184ao.mo451a());
            Iterator it = d.iterator();
            while (it.hasNext()) {
                if (!((Chart) it.next()).mo480f().equals(this.f200f)) {
                    it.remove();
                }
            }
            // C IS THE LIST OF CHARTS AVAIBLE!
            c = d;
        }
        this.f211q.setAdapter((ListAdapter) new C0034ar(this, R.layout.sidescrubber_lineitem, R.id.sidescrubber_itemtext, c));
    }

    /* renamed from: o */
    private void m221o() {
        if (MobileTC.m85i() || MobileTC.m86j()) {
            MobileTC.m78c(false);
            MobileTC.m76b(false);
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(getBaseContext()).edit();
            edit.remove("quick_tips_preference");
            edit.putBoolean(this.f178aG, false);
            edit.commit();
        }
    }

    /* renamed from: p */
    private void m223p() {
        ImageView imageView = (ImageView) this.f198d.findViewById(R.id.chartlist_allcharts);
        ImageView imageView2 = (ImageView) this.f198d.findViewById(R.id.chartlist_favoritecharts);
        ImageView imageView3 = (ImageView) this.f198d.findViewById(R.id.chartlist_groups);
        TextView textView = (TextView) this.f198d.findViewById(R.id.chartlist_currenticao);
        switch (this.f199e) {
            case UpdateService.f405b /*{ENCODED_INT: 0}*/:
                imageView.setImageResource(R.drawable.charts_all_on);
                imageView2.setImageResource(R.drawable.charts_favs);
                imageView3.setImageResource(R.drawable.charts_groups);
                textView.setText(this.f184ao.mo451a() + " Charts");
                return;
            case 1:
                imageView.setImageResource(R.drawable.charts_all);
                imageView2.setImageResource(R.drawable.charts_favs_on);
                imageView3.setImageResource(R.drawable.charts_groups);
                textView.setText(this.f184ao.mo451a() + " Favorites");
                return;
            case UpdateService.f407d /*{ENCODED_INT: 2}*/:
                imageView.setImageResource(R.drawable.charts_all);
                imageView2.setImageResource(R.drawable.charts_favs);
                imageView3.setImageResource(R.drawable.charts_groups_on);
                textView.setText(this.f184ao.mo451a() + " Groups");
                return;
            case 3:
                imageView.setImageResource(R.drawable.charts_all);
                imageView2.setImageResource(R.drawable.charts_favs);
                imageView3.setImageResource(R.drawable.charts_groups_on);
                textView.setText(this.f184ao.mo451a() + " " + this.f200f);
                return;
            default:
                return;
        }
    }

    /* renamed from: q */
    private void m224q() {
        TextView textView = (TextView) this.f148A.findViewById(R.id.sitekey_value);
        if (C0002a.m7b()) {
            textView.setText(C0002a.m3a().mo5b());
        } else {
            textView.setText(getString(R.string.not_activated));
        }
    }

    /* renamed from: r */
    static /* synthetic */ int m226r(ChartDisplayActivity chartDisplayActivity) {
        int i = chartDisplayActivity.f190au;
        chartDisplayActivity.f190au = i + 1;
        return i;
    }

    /* access modifiers changed from: public */
    /* renamed from: r */
    private void m227r() {
        String str;
        Location g = MobileTC.m83g();
        TextView textView = (TextView) this.f160M.findViewById(R.id.GPSTime);
        TextView textView2 = (TextView) this.f160M.findViewById(R.id.GPSAccuracy);
        TextView textView3 = (TextView) this.f160M.findViewById(R.id.GPSAircraftPositionStatus);
        TextView textView4 = (TextView) this.f160M.findViewById(R.id.GPSAircraftPosition);
        TextView textView5 = (TextView) this.f160M.findViewById(R.id.GPSBearing);
        TextView textView6 = (TextView) this.f160M.findViewById(R.id.GPSSpeed);
        TextView textView7 = (TextView) this.f160M.findViewById(R.id.GPSOwnshipStatus);
        TextView textView8 = (TextView) this.f160M.findViewById(R.id.GPSOwnship);
        if (g != null) {
            Date date = new Date(g.getTime());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("kk:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            textView.setText(simpleDateFormat.format(date) + " Z");
            String str2 = "unavailable";
            if (g.hasAccuracy()) {
                str2 = g.getAccuracy() > 32.0f ? "Weak (" + String.valueOf((int) g.getAccuracy()) + "m)" : String.valueOf((int) g.getAccuracy()) + "m";
            }
            textView2.setText(str2);
            textView3.setText("ON");
            double latitude = g.getLatitude();
            double longitude = g.getLongitude();
            String str3 = latitude >= 0.0d ? "N" : "S";
            String str4 = longitude >= 0.0d ? "E" : "W";
            int abs = (int) Math.abs(latitude);
            int abs2 = (int) Math.abs(longitude);
            DecimalFormat decimalFormat = new DecimalFormat("#.#");
            textView4.setText(str3 + " " + abs + " " + decimalFormat.format((Math.abs(latitude) - ((double) abs)) * 60.0d) + " " + str4 + " " + abs2 + " " + decimalFormat.format((Math.abs(longitude) - ((double) abs2)) * 60.0d));
            String str5 = "unavailable";
            if (g.hasBearing()) {
                str5 = String.valueOf(g.getBearing());
            }
            textView5.setText(str5);
            String str6 = "unavailable";
            if (g.hasSpeed()) {
                str6 = String.valueOf((int) (((double) g.getSpeed()) * 1.94384449d)) + " knots";
            }
            textView6.setText(str6);
        } else {
            textView.setText("");
            textView2.setText("");
            textView3.setText("OFF");
            textView4.setText("");
            textView5.setText("");
            textView6.setText("");
        }
        String str7 = "";
        if (MobileTC.m84h()) {
            str = "ON";
        } else {
            str = "OFF";
            str7 = "In Settings->Preferences";
        }
        textView7.setText(str);
        textView8.setText(str7);
    }

    /* access modifiers changed from: public */
    /* renamed from: s */
    private void m229s() {
        this.f169W.setBackgroundResource(R.drawable.chart_stack_bg_9);
        this.f169W.setImageResource(0);
        this.f169W.setScaleType(ImageView.ScaleType.FIT_START);
        this.f169W.mo410c();
        this.f169W.mo408a(true);
        this.f170X = true;
//        this.f211q.setVisibility(0); // REMOVED FROM SMALI
    }

    /* renamed from: t */
    private void m230t() {
        this.f169W.setScaleType(ImageView.ScaleType.FIT_XY);
        if (MobileTC.m84h()) {
            this.f169W.setImageResource(R.drawable.jtstips_1_9_gps);
        } else {
            this.f169W.setImageResource(R.drawable.jtstips_1_9);
        }
        this.f170X = true;
        this.f169W.setBackgroundResource(0);
        this.f169W.mo408a(false);
//        this.f211q.setVisibility(8);
    }

    /* renamed from: u */
    private void m231u() {
        this.f170X = true;
        this.f169W.setBackgroundResource(0);
        this.f169W.mo408a(true);
//        this.f211q.setVisibility(8);
    }

    /* renamed from: v */
    private void m232v() {
        int i = 0;
        long nanoTime = System.nanoTime();
        JITHandler.m539e();
        JITHandler.m537d();
        if (this.f192aw) {
            JITHandler.m530a(this.f191av);
        } else {
            JITHandler.m530a(MobileTC.m75b());
        }
        for (Airport airport : JITHandler.m533b()) {
            for (Chart chart : JITHandler.m535c(airport.mo451a())) {
                int i2 = i + 1;
                Log.e(f136V, "Cached " + i2 + " charts in " + ((((double) (System.nanoTime() - nanoTime)) / 1.0E9d) / ((double) i2)) + " seconds per chart average");
                i = i2;
            }
        }
        Log.i(f136V, "Total Chart count: " + i);
    }

    public void AboutOnClick(View view) {
        if (this.f161N.isShowing()) {
            this.f161N.dismiss();
        }
        Intent intent = new Intent(this, ApplicationPreferencesActivity.class);
        intent.putExtra(":android:show_fragment", ApplicationPreferencesActivity.AboutFragment.class.getName());
        startActivity(intent);
    }

    public void AirportFavedToggle(View view) {
        Log.d(f136V, "AirportFavedToggle " + view.getTag());
        ImageView imageView = (ImageView) view;
        Airport airport = (Airport) imageView.getTag();
        if (C0111i.m427e(airport.mo451a())) {
            C0111i.m429g(airport.mo451a());
            imageView.setImageResource(R.drawable.fav_off);
        } else {
            C0111i.m428f(airport.mo451a());
            imageView.setImageResource(R.drawable.fav_on);
        }
        C0111i.m415a(getApplicationContext());
    }

    public void AirportListAllAirportsOnClick(View view) {
        Log.d(f136V, "AirportListAllAirportsOnClick");
        List b = JITHandler.m533b();
        this.f198d.findViewById(R.id.airportlist_search_header).setVisibility(0);
        this.f188as = true;
        if (b != null && !b.isEmpty()) {
            C0065g gVar = new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, b, this.f213s);
            this.f201g = (ListView) this.f198d.findViewById(R.id.airportlist_list_view);
            this.f201g.setAdapter((ListAdapter) gVar);
            this.f201g.setTextFilterEnabled(false);
            if (this.f202h.getText().length() < 1) {
                this.f201g.setSelection(this.f204j);
            }
            mo153d();
            this.f201g.setVisibility(0);
            ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(8);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all_on);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs);
        }
    }

    public void AirportListClearSearchOnClick(View view) {
        this.f202h.setText("");
        mo153d();
        this.f201g.setSelection(this.f204j);
    }

    public void AirportListFavoritesOnClick(View view) {
        this.f196b.hideSoftInputFromWindow(this.f202h.getWindowToken(), 0);
        List a = C0111i.m414a();
        this.f198d.findViewById(R.id.airportlist_search_header).setVisibility(8);
        if (a == null || a.isEmpty()) {
            this.f201g.setVisibility(8);
            ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(0);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
        }
        if (a != null && !a.isEmpty()) {
            C0065g gVar = new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, a, null);
            this.f201g = (ListView) this.f198d.findViewById(R.id.airportlist_list_view);
            this.f201g.setAdapter((ListAdapter) gVar);
            this.f201g.setSelection(this.f205k);
            this.f201g.setTextFilterEnabled(false);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
            ((ImageView) this.f198d.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
        }
        this.f188as = false;
    }

    public void AirportSelectedOnClick(View view) {
        Airport airport = (Airport) view.getTag();
        Log.d(f136V, "selectedAirport: " + airport);
        if (!airport.equals(C0065g.f357b)) {
            if (this.f184ao != null && !airport.mo451a().equals(this.f184ao.mo451a())) {
                this.f199e = 0;
                mo155f();
                this.f184ao = airport;
                this.f208n = 0;
            }
            if (this.f184ao == null) {
                this.f199e = 0;
                this.f208n = 0;
            }
            this.f184ao = airport;
            List c = JITHandler.m535c(this.f184ao.mo451a());
            if (c == null || c.size() < 1) {
                MobileTC.m70a(this, "Charts for this airport are not available");
                this.f197c.dismiss();
                this.f198d.setDisplayedChild(0);
                return;
            }
            if (this.f199e == 0) {
                C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, C0025ai.m320a(c));
                this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
                this.f201g.setAdapter((ListAdapter) aiVar);
                this.f201g.setTextFilterEnabled(false);
            } else if (this.f199e == 1) {
                ChartListFavoritesOnClick(view);
            }
            m223p();
            this.f201g.setSelection(this.f208n);
            this.f198d.setDisplayedChild(1);
            this.f196b.hideSoftInputFromWindow(this.f202h.getWindowToken(), 0);
            this.f198d.setInAnimation(this, 17432578);
            this.f198d.setOutAnimation(this, 17432579);
        }
    }

    public void AirportsOnClick(View view) {
        List b;
        Location location;
        if (view.getId() == R.id.airporticon && this.f198d.getDisplayedChild() == 1) {
            if (this.f199e == 1) {
                ChartListFavoritesOnClick(view);
            }
            this.f201g.setSelection(this.f208n);
            if (!this.f197c.isShowing()) {
                this.f197c.showAsDropDown(this.f203i, 0, 0);
                m191a(this.f197c, 350, this.f203i);
            }
            this.f198d.setInAnimation(this, 17432578);
            this.f198d.setOutAnimation(this, 17432579);
            return;
        }
        this.f201g = (ListView) this.f198d.findViewById(R.id.airportlist_list_view);
        if (this.f201g.getAdapter() == null || JITHandler.m536c()) {
            this.f204j = 0;
        }
        if (!this.f188as) {
            b = C0111i.m414a();
            if (b == null || b.isEmpty()) {
                this.f201g.setVisibility(8);
                ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(0);
                ((ImageView) this.f198d.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
                ((ImageView) this.f198d.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
                this.f198d.setDisplayedChild(0);
                if (!this.f197c.isShowing()) {
                    this.f197c.showAsDropDown(this.f203i, 0, 0);
                    m191a(this.f197c, 350, this.f203i);
                }
                this.f196b.hideSoftInputFromWindow(this.f202h.getWindowToken(), 0);
                return;
            }
            location = null;
        } else {
            b = JITHandler.m533b();
            location = this.f213s;
        }
        if (b == null || b.size() < 1) {
            MobileTC.m70a(this, "No airports currently available.\n\nIf you are currently updating your subscriptions, try again in a few moments.");
            this.f197c.dismiss();
            this.f198d.setDisplayedChild(0);
            return;
        }
        this.f201g.setAdapter((ListAdapter) new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, b, location));
        this.f201g.setTextFilterEnabled(false);
        mo153d();
        if (!this.f188as) {
            this.f201g.setSelection(this.f205k);
        } else if (this.f202h.getText().length() > 0) {
            this.f201g.setSelection(this.f206l);
        } else {
            this.f201g.setSelection(this.f204j);
        }
        this.f198d.setDisplayedChild(0);
        if (!this.f197c.isShowing()) {
            this.f197c.showAsDropDown(this.f203i, 0, 0);
            m191a(this.f197c, 350, this.f203i);
        }
        this.f196b.hideSoftInputFromWindow(this.f202h.getWindowToken(), 0);
        this.f198d.setInAnimation(this, R.anim.slide_in_right);
        this.f198d.setOutAnimation(this, R.anim.slide_out_left);
    }

    public void CCNOnClick(View view) {
        if (this.f184ao != null) {
            String str = "";
            if (this.f187ar != null) {
                str = this.f187ar.mo469a();
            } else if (this.f184ao != null) {
                str = this.f184ao.mo451a();
            }
            new AsyncTaskC0020ad(this, null).execute(str);
        } else if (!this.f150C.isShowing()) {
            ((TextView) this.f153F.findViewById(R.id.NoNotams)).setText(getString(R.string.nonotams));
            this.f150C.showAsDropDown(this.f151D, 2, 0);
            m191a(this.f150C, 350, this.f151D);
        }
    }

    public void ChartFavedToggle(View view) {
        Log.d(f136V, "chartFavedToggle " + view.getTag());
        ImageView imageView = (ImageView) view;
        Chart chart = (Chart) imageView.getTag();
        if (chart != null) {
            if (!m198a(chart)) {
                imageView.setImageResource(R.drawable.fav_off);
            } else {
                imageView.setImageResource(R.drawable.fav_on);
            }
        }
        if (chart == this.f187ar) {
            ImageView imageView2 = (ImageView) findViewById(R.id.imageButton3);
            if (C0111i.m421c(this.f187ar)) {
                imageView2.setImageResource(R.drawable.titlechartfavorite_on);
            } else {
                imageView2.setImageResource(R.drawable.titlechartfavorite);
            }
        }
    }

    public void ChartGroupSelected(View view) {
        String str = (String) view.getTag();
        Log.d(f136V, "ChartGroupSelected " + str);
        List d = C0111i.m422d(this.f184ao.mo451a());
        this.f199e = 3;
        this.f200f = str;
        m223p();
        Iterator it = d.iterator();
        while (it.hasNext()) {
            if (!((Chart) it.next()).mo480f().equals(str)) {
                it.remove();
            }
        }
        C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, d);
        this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
        this.f201g.setAdapter((ListAdapter) aiVar);
        this.f201g.setTextFilterEnabled(false);
    }

    public void ChartListAllChartsOnClick(View view) {
        Log.d(f136V, "ChartListAllChartsOnClick");
        List d = C0111i.m422d(this.f184ao.mo451a());
        this.f199e = 0;
        m223p();
        if (d != null && !d.isEmpty()) {
            C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, C0025ai.m320a(d));
            this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
            this.f201g.setAdapter((ListAdapter) aiVar);
            this.f201g.setTextFilterEnabled(false);
            this.f201g.setVisibility(0);
            ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
        }
    }

    public void ChartListBackOnClick(View view) {
        if (this.f199e == 3) {
            ChartListGroupsOnClick(view);
        } else {
            AirportsOnClick(view);
        }
    }

    public void ChartListFavoritesOnClick(View view) {
        Log.d(f136V, "ChartListFavoritesOnClick");
        List c = C0111i.m419c(this.f184ao.mo451a());
        this.f199e = 1;
        m223p();
        if (c == null || c.isEmpty()) {
            mo154e();
            return;
        }
        mo155f();
        C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, C0025ai.m320a(c));
        this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
        this.f201g.setAdapter((ListAdapter) aiVar);
        this.f201g.setTextFilterEnabled(false);
    }

    public void ChartListGroupsOnClick(View view) {
        List c = JITHandler.m535c(this.f184ao.mo451a());
        this.f199e = 2;
        m223p();
        if (c == null || c.isEmpty()) {
            MobileTC.m70a(this, "No charts available to group");
            return;
        }
        List a = C0025ai.m320a(c);
        Iterator it = a.iterator();
        while (it.hasNext()) {
            if (!(((Chart) it.next()) instanceof ChartGroupDivider)) {
                it.remove();
            }
        }
        C0024ah ahVar = new C0024ah(this, R.layout.chart_group_lineitem, R.id.chartgroup_name, a, this.f184ao);
        this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
        this.f201g.setAdapter((ListAdapter) ahVar);
        this.f201g.setTextFilterEnabled(false);
        this.f201g.setVisibility(0);
        ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
    }

    public void ChartSelectedFromScrubberOnClick(View view) {
        if (MobileTC.m89n()) {
            MobileTC.m70a(this, "Currently rendering chart. Please wait.");
            return;
        }
        MobileTC.m80d(true);
        Chart chart = (Chart) view.getTag();
        m194a(chart, false);
        m221o();
        m204b(chart);
    }

    public void ChartSelectedOnClick(View view) {
        m221o();
        this.f197c.dismiss();
        this.f212r = this.f216v.isShowing();
        this.f216v.dismiss();
        Chart chart = (Chart) view.getTag();
        m204b(chart);
        m219n();
        m194a(chart, true);
    }

    public void DimmerOnClick(View view) {
        float f = getWindow().getAttributes().screenBrightness;
        if (f < 0.0f) {
            f = -f;
        }
        int i = (int) (f * 100.0f);
        View inflate = this.f173a.inflate(R.layout.dimmercontrol, (ViewGroup) null);
        this.f181ac = new PopupWindow(inflate, 320, 100, true);
        this.f181ac.setBackgroundDrawable(getResources().getDrawable(R.drawable.dialog_full_holo_dark2));
        SeekBar seekBar = (SeekBar) inflate.findViewById(R.id.seekBar);
        seekBar.setMax(100);
        seekBar.setProgress(i);
        this.f181ac.showAsDropDown(findViewById(R.id.imageButton4), -230, 0);
        this.f181ac.setOnDismissListener(new C0078t(this));
        seekBar.setOnSeekBarChangeListener(new C0079u(this));
    }

    public void FavAllOnClick(View view) {
        Log.d(f136V, "FavAllOnClick");
        if (this.f184ao != null) {
            String a = this.f187ar != null ? this.f187ar.mo469a() : this.f184ao != null ? this.f184ao.mo451a() : "";
            List c = C0111i.m419c(a);
            if (c != null && c.size() != 0) {
                List a2 = C0025ai.m320a(c);
                C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, a2);
                this.f201g = (ListView) this.f218x.findViewById(R.id.faved_chartlist_list_view);
                this.f201g.setAdapter((ListAdapter) aiVar);
                this.f201g.setTextFilterEnabled(false);
                ((TextView) this.f218x.findViewById(R.id.faved_chartlist_currenticao)).setText(a + " Favorites");
                if (a2 == null || a2.size() < 1) {
                    if (!this.f215u.isShowing()) {
                        ((TextView) this.f219y.findViewById(R.id.NoFavs)).setText(a + " Favorites");
                        this.f215u.showAsDropDown(this.f217w, 2, 0);
                        m191a(this.f215u, 350, this.f217w);
                    }
                } else if (!this.f216v.isShowing()) {
                    this.f216v.showAsDropDown(this.f217w, 2, 0);
                    m191a(this.f216v, 350, this.f217w);
                }
            } else if (!this.f215u.isShowing()) {
                ((TextView) this.f219y.findViewById(R.id.NoFavs)).setText(a + " Favorites");
                this.f215u.showAsDropDown(this.f217w, 2, 0);
                m191a(this.f215u, 350, this.f217w);
            }
        } else if (!this.f215u.isShowing()) {
            ((TextView) this.f219y.findViewById(R.id.NoFavs)).setText(R.string.nofavs);
            this.f215u.showAsDropDown(this.f217w, 2, 0);
            m191a(this.f215u, 350, this.f217w);
        }
    }

    public void GPSDataOnClick(View view) {
        m227r();
        this.f159L.showAsDropDown(f145aj, 2, 0);
    }

    public void HelpOnClick(View view) {
        Log.d(f136V, "In HelpOnClick");
        if (this.f161N.isShowing()) {
            this.f161N.dismiss();
        }
        try {
            showDialog(2);
        } catch (Exception e) {
            Log.d("exception creating help dialog", e.getMessage());
        }
    }

    public void LaunchReaderOnClick(View view) {
        Log.d(f136V, "LaunchReaderOnClick");
        String str = MobileTC.m77c().getAbsolutePath() + File.separatorChar + ((C0011b) view.getTag()).mo65i();
        Log.d(f136V, "File to open in PDF reader is: " + str);
        File file = new File(str);
        if (file.exists()) {
            Uri fromFile = Uri.fromFile(file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(fromFile, "application/pdf");
            intent.setFlags(67108864);
            try {
                startActivity(intent);
            } catch (ActivityNotFoundException e) {
                Log.e(f136V, "No Application available to view pdf");
            }
        }
    }

    public void ManualsOnClick(View view) {
        new AsyncTaskC0019ac(this, null).execute(new Void[0]);
    }

    public void PreferencesOnClick(View view) {
        Log.d(f136V, "In PreferencesOnClick");
        if (this.f161N.isShowing()) {
            this.f161N.dismiss();
        }
        Intent intent = new Intent(this, ApplicationPreferencesActivity.class);
        intent.putExtra(":android:show_fragment", ApplicationPreferencesActivity.PreferencesFragment.class.getName());
        startActivity(intent);
    }

    public void RemoveTips(View view) {
        this.f169W.setOnClickListener(null);
        mo148a();
        this.f170X = true;
        if (MobileTC.f436a) {
            Log.i(f136V, "RemoveTips() called, clearing screen");
        }
    }

    public void SettingsMenuOnClick(View view) {
        Log.d(f136V, "In SettingsMenuOnClick");
        this.f161N.showAsDropDown(findViewById(R.id.settingsbutton), -230, 0);
    }

    public void SettingsOnClick(View view) {
        boolean z = false;
        if (this.f161N.isShowing()) {
            this.f161N.dismiss();
        }
        boolean b = C0002a.m7b();
        int b2 = C0005a.m31b();
        if (!C0115m.m451b("downloadIds", getApplicationContext()).isEmpty()) {
        }
        if (C0002a.m10c() && this.f176aE.getBoolean("company_content", false)) {
            z = true;
        }
        if (z) {
        }
        if (b || b2 > 0) {
            Intent intent = new Intent(this, ApplicationPreferencesActivity.class);
            intent.putExtra("com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode", z);
            intent.putExtra(":android:show_fragment", ApplicationPreferencesActivity.UpdatesFragment.class.getName());
            startActivity(intent);
            return;
        }
        Intent intent2 = new Intent(getApplicationContext(), ActivationActivity.class);
        intent2.setFlags(67108864);
        startActivity(intent2);
    }

    public void ToggleFavoriteOnClick(View view) {
        Log.d(f136V, "ToggleFavoriteOnClick");
        ImageView imageView = (ImageView) view;
        if (this.f187ar == null || this.f184ao == null) {
            Log.d(f136V, "currentlySelectedChart is " + this.f187ar + " airport is " + this.f184ao);
        } else if (m198a(this.f187ar)) {
            if (imageView.getId() == R.id.imageButton3) {
                imageView.setImageResource(R.drawable.titlechartfavorite_on);
            } else {
                imageView.setImageResource(R.drawable.fav_on);
            }
        } else if (imageView.getId() == R.id.imageButton3) {
            imageView.setImageResource(R.drawable.titlechartfavorite);
        } else {
            imageView.setImageResource(R.drawable.fav_off);
        }
    }

    /* renamed from: a */
    public void mo148a() {
        try {
            if (this.f169W.getDrawable() != null) {
                this.f169W.getDrawable().setCallback(null);
            }
            this.f169W.mo406a();
        } catch (Exception e) {
            Log.e(f136V, "Error clearing drawable in image view", e);
        }
    }

    public void afterTextChanged(Editable editable) {
    }

    /* renamed from: b */
    public void mo150b() {
        if (MobileTC.m87k() != null) {
            m229s();
            this.f169W.setImage(MobileTC.m87k());
        } else if (MobileTC.m85i() || MobileTC.m86j()) {
            m230t();
        } else {
            m231u();
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: c */
    public void mo152c() {
        if (MobileTC.f436a) {
            Log.i(f136V, "renderComplete() called in ChartSurfaceView");
        }
        if (this.f171Y.getBitmap() != null) {
            MobileTC.m72a(this.f171Y.getBitmap());
        }
        System.gc();
        this.f172Z.setText(this.f180ab);
        mo150b();
        MobileTC.m80d(false);
        if (MobileTC.f436a) {
            Log.i(f136V, "************** Time for complete chart render is: " + (((double) (System.nanoTime() - this.f179aa)) / 1.0E9d));
        }
        if (MobileTC.f436a && !this.f189at) {
            mo159j();
        }
    }

    /* renamed from: d */
    public void mo153d() {
        if (this.f188as && this.f202h.getText().length() > 0) {
            ((C0066h) ((Filterable) this.f201g.getAdapter()).getFilter()).filter(this.f202h.getText());
            this.f201g.setSelection(this.f206l);
        }
    }

    /* renamed from: e */
    public void mo154e() {
        this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
        this.f201g.setVisibility(8);
        ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewChart)).setVisibility(0);
    }

    /* renamed from: f */
    public void mo155f() {
        this.f201g = (ListView) this.f198d.findViewById(R.id.chartlist_list_view);
        this.f201g.setVisibility(0);
        ((ImageView) this.f198d.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
    }

    /* renamed from: g */
    public void mo156g() {
        if (this.f187ar != null) {
            C0115m.m449a(getString(R.string.selectedChart), C0111i.m413a(this.f187ar.mo469a(), this.f187ar.mo474c()), getApplicationContext());
        }
    }

    /* renamed from: h */
    public Chart mo157h() {
        this.f187ar = null;
        String a = C0115m.m444a(getString(R.string.selectedChart), getApplicationContext());
        if (!a.isEmpty()) {
            String a2 = C0111i.m412a(a);
            String b = C0111i.m417b(a);
            for (Chart chart : JITHandler.m535c(a2)) {
                if (chart != null && chart.mo474c().equals(b)) {
                    this.f187ar = chart;
                    return chart;
                }
            }
            if (this.f187ar == null) {
                MobileTC.m70a(this, "Your previously viewed chart is not available");
            }
        }
        return this.f187ar;
    }

    /* renamed from: i */
    public void mo158i() {
        this.f189at = false;
        this.f167T.removeCallbacks(this.f168U);
        this.f167T.postDelayed(this.f168U, 3000);
    }

    /* renamed from: j */
    public void mo159j() {
        if (!this.f189at) {
            this.f167T.removeCallbacks(this.f168U);
            this.f167T.postDelayed(this.f168U, 10);
        }
    }

    /* renamed from: k */
    public void mo160k() {
        this.f189at = true;
        this.f167T.removeCallbacks(this.f168U);
    }

    public void onConfigurationChanged(Configuration configuration) {
        Log.d(f136V, "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            findViewById(R.id.chartdisplaylayout).setBackgroundResource(R.drawable.background_land);
            if (this.f170X) {
                if (MobileTC.m84h()) {
                    this.f169W.setImageResource(R.drawable.jtstips_land_gps);
                } else {
                    this.f169W.setImageResource(R.drawable.jtstips_land);
                }
            }
        } else {
            findViewById(R.id.chartdisplaylayout).setBackgroundResource(R.drawable.background_port);
            if (this.f170X) {
                if (MobileTC.m84h()) {
                    this.f169W.setImageResource(R.drawable.jtstips_port_gps);
                } else {
                    this.f169W.setImageResource(R.drawable.jtstips_port);
                }
            }
        }
        findViewById(R.id.chartdisplaylayout).invalidate();
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 1:
                if (this.f189at) {
                    mo158i();
                    return true;
                }
                mo160k();
                return true;
            case UpdateService.f407d /*{ENCODED_INT: 2}*/:
            default:
                return super.onOptionsItemSelected(menuItem);
            case 3:
                this.f192aw = !this.f192aw;
                JITHandler.m539e();
                JITHandler.m537d();
                this.f182am = null;
                this.f183an = null;
                this.f185ap = null;
                this.f186aq = null;
                this.f190au = 0;
                if (this.f192aw) {
                    JITHandler.m530a(this.f191av);
                } else {
                    JITHandler.m530a(MobileTC.m75b());
                }
                JITHandler.m533b();
                return true;
            case UpdateService.f409f /*{ENCODED_INT: 4}*/:
                if (MobileTC.m87k() == null) {
                    return true;
                }
                C0116n.m456a(MobileTC.m87k(), this.f180ab);
                return true;
            case UpdateService.f410g /*{ENCODED_INT: 5}*/:
                if (MobileTC.m87k() == null) {
                    return true;
                }
                C0116n.m456a(MobileTC.m87k(), this.f180ab);
                return true;
            case UpdateService.f411h /*{ENCODED_INT: 6}*/:
                m232v();
                return true;
            case UpdateService.f412i /*{ENCODED_INT: 7}*/:
                if (this.f192aw) {
                    C0116n.m460a(new File(this.f191av + "/unpackedtcl"));
                    return true;
                }
                C0116n.m460a(new File(MobileTC.m75b() + "/unpackedtcl"));
                return true;
            case UpdateService.f413j /*{ENCODED_INT: 8}*/:
                if (!this.f193ax) {
                    z = true;
                }
                this.f193ax = z;
                C0005a.m28a(this.f193ax);
                return true;
            case UpdateService.f414k /*{ENCODED_INT: 9}*/:
                C0115m.m449a(getString(R.string.selectedChart), (String) null, getApplicationContext());
                this.f187ar = null;
                mo148a();
                MobileTC.m72a((Bitmap) null);
                mo150b();
                this.f169W.invalidate();
                this.f169W.setOnClickListener(this.f166S);
                return true;
            case UpdateService.f415l /*{ENCODED_INT: 10}*/:
                if (this.f194ay) {
                    this.f164Q.mo195b();
                } else {
                    this.f164Q = new C0014a(this, this.f165R, getResources().getStringArray(R.array.ohare_taxi_tour));
                    this.f164Q.mo194a();
                }
                if (!this.f194ay) {
                    z = true;
                }
                this.f194ay = z;
                return true;
            case UpdateService.f416m /*{ENCODED_INT: 11}*/:
                this.f164Q = new C0014a(this, this.f165R, getResources().getStringArray(R.array.kden_taxi_tour));
                this.f164Q.mo194a();
                this.f194ay = true;
                return true;
            case UpdateService.f417n /*{ENCODED_INT: 12}*/:
                new AsyncTaskC0084z(this, null).execute(new Void[0]);
                return true;
            case 13:
                C0115m.m449a(getString(R.string.selectedChart), (String) null, getApplicationContext());
                this.f187ar = null;
                mo148a();
                MobileTC.m72a((Bitmap) null);
                mo150b();
                this.f169W.invalidate();
                this.f169W.setOnClickListener(this.f166S);
                SharedPreferences.Editor edit = this.f176aE.edit();
                edit.remove(this.f178aG);
                edit.commit();
                return true;
        }
    }

    public void onCreate(Bundle bundle) {
        PackageInfo packageInfo = null;
        super.onCreate(bundle);
        try {
            if (MobileTC.f436a) {
                Log.i(f136V, "onCreate() called");
            }
            setContentView(R.layout.chartdisplay);
            this.f211q = (ListView) findViewById(R.id.sidescrubber_listview);
            float f = getResources().getDisplayMetrics().density;
            this.f169W = (ImageZoomView) findViewById(R.id.imageView); // represents the actual image viewer, not the gl surface i think
            this.f169W.mo409b();
            this.f171Y = (TCLGLSurfaceView) findViewById(R.id.glSurfaceView);
            this.f171Y.setMyHandler(this.f163P);
            this.f169W.setOnClickListener(this.f166S);
            try {
                packageInfo = getPackageManager().getPackageInfo(getPackageName(), 1);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f136V, "Unable to get package info: ", e);
            }
            this.f178aG = "quickTips_" + packageInfo.versionCode;
            this.f176aE = PreferenceManager.getDefaultSharedPreferences(this);
            MobileTC.m76b(this.f176aE.getBoolean(this.f178aG, true));
            boolean z = this.f176aE.getBoolean("quick_tips_preference", false);
            MobileTC.m78c(z);
            mo150b();
            this.f172Z = (TextView) findViewById(R.id.AirportName);
            if (MobileTC.f436a) {
                registerForContextMenu(this.f172Z);
            }
            this.f173a = (LayoutInflater) getSystemService("layout_inflater");
            this.f196b = (InputMethodManager) getSystemService("input_method");
            this.f198d = new ViewSwitcher(this);
            View inflate = this.f173a.inflate(R.layout.airportlist, (ViewGroup) null);
            ((ListView) inflate.findViewById(R.id.airportlist_list_view)).setOnScrollListener(new C0073o(this));
            View inflate2 = this.f173a.inflate(R.layout.chartlist, (ViewGroup) null);
            ((ListView) inflate2.findViewById(R.id.chartlist_list_view)).setOnScrollListener(new C0076r(this));
            this.f198d.addView(inflate, 0);
            this.f198d.addView(inflate2, 1);
            this.f198d.setBackgroundResource(R.drawable.dialog_full_holo_dark2);
            this.f197c = new PopupWindow(this.f198d, (int) (350.0f * f), 1535);
            this.f197c.setFocusable(true);
            this.f197c.setTouchable(true);
            this.f197c.setOutsideTouchable(true);
            this.f197c.setClippingEnabled(false);
            this.f197c.setBackgroundDrawable(new BitmapDrawable());
            this.f203i = findViewById(R.id.airporticon);
            this.f197c.setOnDismissListener(new C0077s(this));
            this.f202h = (EditText) this.f198d.findViewById(R.id.airportlist_search_view);
            this.f202h.addTextChangedListener(this);
            Drawable drawable = getResources().getDrawable(R.drawable.dialog_full_holo_dark2);
            this.f149B = new PopupWindow(this);
            this.f149B.setWidth((int) (380.0f * f));
            this.f149B.setHeight(1535);
            this.f149B.setFocusable(true);
            this.f149B.setBackgroundDrawable(drawable);
            this.f152E = this.f173a.inflate(R.layout.notamslist, (ViewGroup) null);
            this.f149B.setContentView(this.f152E);
            this.f151D = findViewById(R.id.notamsicon);
            this.f150C = new PopupWindow(this);
            this.f150C.setWidth((int) (350.0f * f));
            this.f150C.setHeight(620);
            this.f150C.setFocusable(true);
            this.f150C.setBackgroundDrawable(drawable);
            this.f153F = this.f173a.inflate(R.layout.nonotams, (ViewGroup) null);
            this.f150C.setContentView(this.f153F);
            this.f220z = new PopupWindow(this);
            this.f220z.setWidth((int) (450.0f * f));
            this.f220z.setHeight(300);
            this.f220z.setBackgroundDrawable(drawable);
            this.f220z.setFocusable(true);
            this.f148A = this.f173a.inflate(R.layout.aboutview, (ViewGroup) null);
            this.f220z.setContentView(this.f148A);
            ((TextView) this.f148A.findViewById(R.id.version_value)).setText(packageInfo.versionName);
            this.f154G = new PopupWindow(this);
            this.f154G.setWidth((int) (350.0f * f));
            this.f154G.setHeight(1535);
            this.f154G.setFocusable(true);
            this.f154G.setBackgroundDrawable(drawable);
            this.f157J = this.f173a.inflate(R.layout.manualslist, (ViewGroup) null);
            this.f154G.setContentView(this.f157J);
            this.f156I = findViewById(R.id.manualsicon);
            this.f155H = new PopupWindow(this);
            this.f155H.setWidth((int) (350.0f * f));
            this.f155H.setHeight(1535);
            this.f155H.setFocusable(true);
            this.f155H.setBackgroundDrawable(drawable);
            this.f158K = this.f173a.inflate(R.layout.nomanuals, (ViewGroup) null);
            this.f155H.setContentView(this.f158K);
            this.f159L = new PopupWindow(this);
            this.f159L.setWidth((int) (350.0f * f));
            this.f159L.setHeight(380);
            this.f159L.setFocusable(true);
            this.f159L.setBackgroundDrawable(drawable);
            this.f160M = this.f173a.inflate(R.layout.gpsdatapopup, (ViewGroup) null);
            this.f159L.setContentView(this.f160M);
            f145aj = (ImageButton) findViewById(R.id.GPSDataicon);
            this.f216v = new PopupWindow(this);
            this.f216v.setWidth((int) (350.0f * f));
            this.f216v.setHeight(1535);
            this.f216v.setFocusable(true);
            this.f216v.setBackgroundDrawable(drawable);
            this.f218x = this.f173a.inflate(R.layout.faved_chartlist, (ViewGroup) null);
            this.f216v.setContentView(this.f218x);
            this.f215u = new PopupWindow(this);
            this.f215u.setWidth((int) (f * 350.0f));
            this.f215u.setHeight(1535);
            this.f215u.setFocusable(true);
            this.f215u.setBackgroundDrawable(drawable);
            this.f219y = this.f173a.inflate(R.layout.nofavorites, (ViewGroup) null);
            this.f215u.setContentView(this.f219y);
            this.f217w = findViewById(R.id.ChartFavoriteAll);
            f146ak = (ImageButton) findViewById(R.id.settingsbutton);
            this.f162O = this.f173a.inflate(R.layout.settingsmenupopup, (ViewGroup) null);
            this.f162O.measure(0, 0);
            int measuredWidth = this.f162O.getMeasuredWidth();
            this.f161N = new PopupWindow(this);
            this.f161N.setWidth(measuredWidth);
            this.f161N.setHeight(this.f162O.getMeasuredHeight() + 50);
            this.f161N.setFocusable(true);
            this.f161N.setBackgroundDrawable(drawable);
            this.f161N.setContentView(this.f162O);
            f147al = (ImageView) this.f162O.findViewById(R.id.settingsmenu_updateicon);
            new AsyncTaskC0023ag(this, null).execute(new Void[0]);
            new AsyncTaskC0114l().execute(getApplicationContext());
            this.f175aD = "eula_" + packageInfo.versionCode;
            if (z) {
                mo148a();
            } else {
                new AsyncTaskC0022af(this, null).execute(new Void[0]);
            }
            if (!this.f176aE.getBoolean(this.f175aD, false)) {
                showDialog(1);
            } else {
                new AsyncTaskC0017aa(this, null).execute(new Void[0]);
            }
            new AsyncTaskC0018ab(this, null).execute(new Void[0]);
        } catch (Exception e2) {
            Log.e(f136V, e2.toString());
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.setHeaderTitle("TC Debug Menu");
        if (this.f189at) {
            contextMenu.add(0, 1, 0, "Start Chart Display Test");
        } else {
            contextMenu.add(0, 1, 0, "Stop Chart Display Test");
        }
        if (this.f192aw) {
            contextMenu.add(0, 3, 0, "Use Demo Chart Data");
        } else {
            contextMenu.add(0, 3, 0, "Use " + this.f191av + " for Chart Data");
        }
        contextMenu.add(0, 4, 0, "Save Compressed Chart Image to Gallery");
        contextMenu.add(0, 7, 0, "Empty chart cache");
        if (this.f193ax) {
            contextMenu.add(0, 8, 0, "Use production Update Server(s)");
        } else {
            contextMenu.add(0, 8, 0, "Use november Update Server");
        }
        contextMenu.add(0, 9, 0, "Blank out currently selected chart");
        if (this.f194ay) {
            contextMenu.add(0, 10, 0, "Stop Taxi Tour");
        } else {
            contextMenu.add(0, 10, 0, "Start KORD Taxi Tour");
            contextMenu.add(0, 11, 0, "Start KDEN Taxi Tour");
        }
        contextMenu.add(0, 12, 0, "Deactivate Device");
        contextMenu.add(0, 13, 0, "Reset QuickTips");
    }

    public Dialog onCreateDialog(int i) {
        switch (i) {
            case 1:
                return m185a(getString(R.string.app_eula_title));
            case UpdateService.f407d /*{ENCODED_INT: 2}*/:
                View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.help_dialog, (ViewGroup) null);
                WebView webView = (WebView) inflate.findViewById(R.id.HelpDialogWebView);
                webView.loadDataWithBaseURL("file:///android_asset/", this.f195az, "text/html", "UTF-8", "about:blank");
                webView.setInitialScale(90);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setIconAttribute(16843605);
                builder.setView(inflate);
                builder.setTitle(getString(R.string.help_menu_item));
                return builder.create();
            default:
                return null;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        mo148a();
        this.f169W.setOnTouchListener(null);
    }

    public void onPause() {
        super.onPause();
        Log.i(f136V, "onPause");
        ((LocationManager) getSystemService("location")).removeUpdates(this.f165R);
        if (this.f214t != null) {
            this.f214t.cancel(true);
        }
        this.f165R.onLocationChanged(null);
        if (this.f164Q != null) {
            this.f164Q.mo195b();
            this.f194ay = false;
        }
    }

    public void onResume() {
        super.onResume();
        Log.i(f136V, "onResume");
        new AsyncTaskC0114l().execute(getApplicationContext());
        if (this.f176aE == null) {
            this.f176aE = PreferenceManager.getDefaultSharedPreferences(this);
        }
        MobileTC.m74a(this.f176aE.getBoolean("show_ownship_apt_diagram", false));
        if (this.f176aE.getBoolean("quick_tips_preference", false)) {
            MobileTC.m78c(true);
            mo148a();
            MobileTC.m72a((Bitmap) null);
            this.f170X = true;
            mo150b();
            this.f169W.setOnClickListener(this.f166S);
        }
        if (MobileTC.m84h()) {
            ((LocationManager) getSystemService("location")).requestLocationUpdates("gps", 0, 0.0f, this.f165R);
            f145aj.setVisibility(0);
            if (this.f170X) {
                Configuration configuration = getResources().getConfiguration();
                if (configuration.orientation == 2) {
                    this.f169W.setImageResource(R.drawable.jtstips_land_gps);
                } else if (configuration.orientation == 1) {
                    this.f169W.setImageResource(R.drawable.jtstips_port_gps);
                }
            }
        } else {
            ((LocationManager) getSystemService("location")).removeUpdates(this.f165R);
            this.f165R.onLocationChanged(null);
            if (this.f214t != null) {
                this.f214t.cancel(true);
            }
            f145aj.setVisibility(4);
            if (this.f170X) {
                Configuration configuration2 = getResources().getConfiguration();
                if (configuration2.orientation == 2) {
                    this.f169W.setImageResource(R.drawable.jtstips_land);
                } else if (configuration2.orientation == 1) {
                    this.f169W.setImageResource(R.drawable.jtstips_port);
                }
            }
        }
        if (this.f176aE.getBoolean("keep_screen_on", false)) {
            getWindow().addFlags(128);
        } else {
            getWindow().clearFlags(128);
        }
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ((C0066h) ((Filterable) this.f201g.getAdapter()).getFilter()).filter(charSequence);
        this.f206l = 0;
        this.f201g.setSelection(0);
    }
}
