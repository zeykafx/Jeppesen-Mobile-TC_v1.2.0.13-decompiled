package com.jeppesen.android.p005tc.activity;

import android.annotation.SuppressLint;
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
    private static ImageButton gpsDataIcon;

    /* renamed from: ak */
    private static ImageButton settingsButton;

    /* renamed from: al */
    private static ImageView settingsPopupUpdateIcon;

    /* renamed from: A */
    View aboutView;

    /* renamed from: B */
    PopupWindow popupWindow2;

    /* renamed from: C */
    PopupWindow notamPopupWindow;

    /* renamed from: D */
    View notamIcon;

    /* renamed from: E */
    View notamListView;

    /* renamed from: F */
    View noNotamsView;

    /* renamed from: G */
    PopupWindow versionValueView;

    /* renamed from: H */
    PopupWindow manualPopupIcon;

    /* renamed from: I */
    View manualIcon;

    /* renamed from: J */
    View ManualListView;

    /* renamed from: K */
    View noManualView;

    /* renamed from: L */
    PopupWindow noManualPopup;

    /* renamed from: M */
    View gpsDataPopup;

    /* renamed from: N */
    PopupWindow settingsMenuPopupWindow;

    /* renamed from: O */
    View settingsMenuPopup;

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
    private ImageZoomView imageZoomView;

    /* renamed from: X */
    private boolean f170X = false;

    /* renamed from: Y */
    private TCLGLSurfaceView surfaceView;

    /* renamed from: Z */
    private TextView f172Z;

    /* renamed from: a */
    LayoutInflater layoutInflater;

    /* renamed from: aC */
    private final String f174aC = "eula_";

    /* renamed from: aD */
    private String f175aD;

    /* renamed from: aE */
    private SharedPreferences sharedPreferences = null;

    /* renamed from: aF */
    private final String f177aF = "quickTips_";

    /* renamed from: aG */
    private String f178aG;

    /* renamed from: aa */
    private long f179aa = 0;

    /* renamed from: ab */
    private String chartName;

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
    private Chart chartToShow = null;

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
    InputMethodManager inputMethodManager;

    /* renamed from: c */
    PopupWindow popupWindow;

    /* renamed from: d */
    ViewSwitcher viewSwitcher;

    /* renamed from: e */
    int f199e = 0;

    /* renamed from: f */
    String f200f;

    /* renamed from: g */
    ListView f201g;

    /* renamed from: h */
    EditText airportSearchEditText;

    /* renamed from: i */
    View airportIcon;

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
    PopupWindow favChartsPopupWindow;

    /* renamed from: v */
    PopupWindow gpsDataIconPopup;

    /* renamed from: w */
    View favAllChartsButton;

    /* renamed from: x */
    View favedChartListView;

    /* renamed from: y */
    View noFavsView;

    /* renamed from: z */
    PopupWindow noNotamsPopupWindow;

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
    private void positionChartOnSideScrubber(Chart chart, boolean z) {
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
            if (settingsButton != null && settingsPopupUpdateIcon != null) {
                settingsButton.setImageResource(R.drawable.btnsettingsupdate);
                settingsButton.invalidate();
                settingsPopupUpdateIcon.setImageResource(R.drawable.iconupdates_badge);
                settingsPopupUpdateIcon.invalidate();
            }
        } else if (settingsButton != null && settingsPopupUpdateIcon != null) {
            settingsButton.setImageResource(R.drawable.btnsettings);
            settingsButton.invalidate();
            settingsPopupUpdateIcon.setImageResource(R.drawable.iconupdates);
            settingsPopupUpdateIcon.invalidate();
        }
    }

    /* renamed from: a */
    private boolean m198a(Chart chart) {
        if (chart == null) {
            return false;
        }
        if (C0111i.containsFavChart(chart)) {
            C0111i.removeFavChart(chart);
            C0111i.m415a(getApplicationContext());
            return false;
        }
        C0111i.addFavChart(chart);
        C0111i.m415a(getApplicationContext());
        return true;
    }

    /* access modifiers changed from: public */
    /* renamed from: b */
    private void m204b(Chart chart) {
        Log.d(f136V, "selectedChart: " + chart.getChartFileName());
        try {
            String b = JITHandler.m532b(chart);
            if (b == null) {
                MobileTC.m70a(this, "Unable to extract Chart " + chart.getChartFileName() + " for Airport " + chart.mo469a() + " from current database");
                return;
            }
            if (JeppAndroidApp.f436a) {
                this.f179aa = System.nanoTime();
            }
            m229s();
            this.chartName = chart.getChartFileName();
            TCLNatives.setPathToTcl(b);
            TCLNatives.setIcao(chart.mo469a());
            TCLNatives.setIndexNumber(chart.mo474c());
            TCLNatives.setProcedureId(chart.getChartFileName());
            TCLNatives.setChartType(chart.mo476d());
            MobileTC.clearBitmap();
            this.surfaceView.requestRender();
            this.chartToShow = chart;
            // saves the currently selected chart in the preferences
            saveCurrentlySelectedChartToPreferences();
            // sets the fav icon to the full star if the chart is a fav
            ImageView imageView = (ImageView) findViewById(R.id.imageButton3);
            if (C0111i.containsFavChart(this.chartToShow)) {
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
        ImageView imageView = (ImageView) this.viewSwitcher.findViewById(R.id.chartlist_allcharts);
        ImageView imageView2 = (ImageView) this.viewSwitcher.findViewById(R.id.chartlist_favoritecharts);
        ImageView imageView3 = (ImageView) this.viewSwitcher.findViewById(R.id.chartlist_groups);
        TextView textView = (TextView) this.viewSwitcher.findViewById(R.id.chartlist_currenticao);
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
        TextView textView = (TextView) this.aboutView.findViewById(R.id.sitekey_value);
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
        Location g = MobileTC.currentLocation();
        TextView textView = (TextView) this.gpsDataPopup.findViewById(R.id.GPSTime);
        TextView textView2 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSAccuracy);
        TextView textView3 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSAircraftPositionStatus);
        TextView textView4 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSAircraftPosition);
        TextView textView5 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSBearing);
        TextView textView6 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSSpeed);
        TextView textView7 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSOwnshipStatus);
        TextView textView8 = (TextView) this.gpsDataPopup.findViewById(R.id.GPSOwnship);
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
        this.imageZoomView.setBackgroundResource(R.drawable.chart_stack_bg_9);
        this.imageZoomView.setImageResource(0);
        this.imageZoomView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.imageZoomView.mo410c();
        this.imageZoomView.setOnTouchListenerToViewTouchListener(true);
        this.f170X = true;
//        this.f211q.setVisibility(0); // REMOVED FROM SMALI
    }

    /* renamed from: t */
    private void m230t() {
        this.imageZoomView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (MobileTC.m84h()) {
            this.imageZoomView.setImageResource(R.drawable.jtstips_1_9_gps);
        } else {
            this.imageZoomView.setImageResource(R.drawable.jtstips_1_9);
        }
        this.f170X = true;
        this.imageZoomView.setBackgroundResource(0);
        this.imageZoomView.setOnTouchListenerToViewTouchListener(true);
//        this.f211q.setVisibility(8);
    }

    /* renamed from: u */
    private void m231u() {
        this.f170X = true;
        this.imageZoomView.setBackgroundResource(0);
        this.imageZoomView.setOnTouchListenerToViewTouchListener(true);
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
        if (this.settingsMenuPopupWindow.isShowing()) {
            this.settingsMenuPopupWindow.dismiss();
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
        this.viewSwitcher.findViewById(R.id.airportlist_search_header).setVisibility(0);
        this.f188as = true;
        if (b != null && !b.isEmpty()) {
            C0065g gVar = new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, b, this.f213s);
            this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.airportlist_list_view);
            this.f201g.setAdapter((ListAdapter) gVar);
            this.f201g.setTextFilterEnabled(false);
            if (this.airportSearchEditText.getText().length() < 1) {
                this.f201g.setSelection(this.f204j);
            }
            mo153d();
            this.f201g.setVisibility(0);
            ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(8);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all_on);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs);
        }
    }

    public void AirportListClearSearchOnClick(View view) {
        this.airportSearchEditText.setText("");
        mo153d();
        this.f201g.setSelection(this.f204j);
    }

    public void AirportListFavoritesOnClick(View view) {
        this.inputMethodManager.hideSoftInputFromWindow(this.airportSearchEditText.getWindowToken(), 0);
        List a = C0111i.m414a();
        this.viewSwitcher.findViewById(R.id.airportlist_search_header).setVisibility(8);
        if (a == null || a.isEmpty()) {
            this.f201g.setVisibility(8);
            ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(0);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
        }
        if (a != null && !a.isEmpty()) {
            C0065g gVar = new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, a, null);
            this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.airportlist_list_view);
            this.f201g.setAdapter((ListAdapter) gVar);
            this.f201g.setSelection(this.f205k);
            this.f201g.setTextFilterEnabled(false);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
            ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
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
                this.popupWindow.dismiss();
                this.viewSwitcher.setDisplayedChild(0);
                return;
            }
            if (this.f199e == 0) {
                C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, C0025ai.m320a(c));
                this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
                this.f201g.setAdapter((ListAdapter) aiVar);
                this.f201g.setTextFilterEnabled(false);
            } else if (this.f199e == 1) {
                ChartListFavoritesOnClick(view);
            }
            m223p();
            this.f201g.setSelection(this.f208n);
            this.viewSwitcher.setDisplayedChild(1);
            this.inputMethodManager.hideSoftInputFromWindow(this.airportSearchEditText.getWindowToken(), 0);
            this.viewSwitcher.setInAnimation(this, 17432578);
            this.viewSwitcher.setOutAnimation(this, 17432579);
        }
    }

    public void AirportsOnClick(View view) {
        List b;
        Location location;
        if (view.getId() == R.id.airporticon && this.viewSwitcher.getDisplayedChild() == 1) {
            if (this.f199e == 1) {
                ChartListFavoritesOnClick(view);
            }
            this.f201g.setSelection(this.f208n);
            if (!this.popupWindow.isShowing()) {
                this.popupWindow.showAsDropDown(this.airportIcon, 0, 0);
                m191a(this.popupWindow, 350, this.airportIcon);
            }
            this.viewSwitcher.setInAnimation(this, 17432578);
            this.viewSwitcher.setOutAnimation(this, 17432579);
            return;
        }
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.airportlist_list_view);
        if (this.f201g.getAdapter() == null || JITHandler.m536c()) {
            this.f204j = 0;
        }
        if (!this.f188as) {
            b = C0111i.m414a();
            if (b == null || b.isEmpty()) {
                this.f201g.setVisibility(8);
                ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewAirport)).setVisibility(0);
                ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_allairports)).setImageResource(R.drawable.airports_all);
                ((ImageView) this.viewSwitcher.findViewById(R.id.airportlist_favoriteairports)).setImageResource(R.drawable.airports_favs_on);
                this.viewSwitcher.setDisplayedChild(0);
                if (!this.popupWindow.isShowing()) {
                    this.popupWindow.showAsDropDown(this.airportIcon, 0, 0);
                    m191a(this.popupWindow, 350, this.airportIcon);
                }
                this.inputMethodManager.hideSoftInputFromWindow(this.airportSearchEditText.getWindowToken(), 0);
                return;
            }
            location = null;
        } else {
            b = JITHandler.m533b();
            location = this.f213s;
        }
        if (b == null || b.size() < 1) {
            MobileTC.m70a(this, "No airports currently available.\n\nIf you are currently updating your subscriptions, try again in a few moments.");
            this.popupWindow.dismiss();
            this.viewSwitcher.setDisplayedChild(0);
            return;
        }
        this.f201g.setAdapter((ListAdapter) new C0065g(this, R.layout.airportlist_lineitem, R.id.airportlist_icao, b, location));
        this.f201g.setTextFilterEnabled(false);
        mo153d();
        if (!this.f188as) {
            this.f201g.setSelection(this.f205k);
        } else if (this.airportSearchEditText.getText().length() > 0) {
            this.f201g.setSelection(this.f206l);
        } else {
            this.f201g.setSelection(this.f204j);
        }
        this.viewSwitcher.setDisplayedChild(0);
        if (!this.popupWindow.isShowing()) {
            this.popupWindow.showAsDropDown(this.airportIcon, 0, 0);
            m191a(this.popupWindow, 350, this.airportIcon);
        }
        this.inputMethodManager.hideSoftInputFromWindow(this.airportSearchEditText.getWindowToken(), 0);
        this.viewSwitcher.setInAnimation(this, R.anim.slide_in_right);
        this.viewSwitcher.setOutAnimation(this, R.anim.slide_out_left);
    }

    public void CCNOnClick(View view) {
        if (this.f184ao != null) {
            String str = "";
            if (this.chartToShow != null) {
                str = this.chartToShow.mo469a();
            } else if (this.f184ao != null) {
                str = this.f184ao.mo451a();
            }
            new AsyncTaskC0020ad(this, null).execute(str);
        } else if (!this.notamPopupWindow.isShowing()) {
            ((TextView) this.noNotamsView.findViewById(R.id.NoNotams)).setText(getString(R.string.nonotams));
            this.notamPopupWindow.showAsDropDown(this.notamIcon, 2, 0);
            m191a(this.notamPopupWindow, 350, this.notamIcon);
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
        if (chart == this.chartToShow) {
            ImageView imageView2 = (ImageView) findViewById(R.id.imageButton3);
            if (C0111i.containsFavChart(this.chartToShow)) {
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
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
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
            this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
            this.f201g.setAdapter((ListAdapter) aiVar);
            this.f201g.setTextFilterEnabled(false);
            this.f201g.setVisibility(0);
            ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
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
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
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
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
        this.f201g.setAdapter((ListAdapter) ahVar);
        this.f201g.setTextFilterEnabled(false);
        this.f201g.setVisibility(0);
        ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
    }

    public void ChartSelectedFromScrubberOnClick(View view) {
        if (MobileTC.m89n()) {
            MobileTC.m70a(this, "Currently rendering chart. Please wait.");
            return;
        }
        MobileTC.m80d(false);
        Chart chart = (Chart) view.getTag();
        positionChartOnSideScrubber(chart, false);
        m221o();
        m204b(chart);
    }

    public void ChartSelectedOnClick(View view) {
        m221o();
        this.popupWindow.dismiss();
        this.f212r = this.gpsDataIconPopup.isShowing();
        this.gpsDataIconPopup.dismiss();
        Chart chart = (Chart) view.getTag();
        m204b(chart);
        m219n();
        positionChartOnSideScrubber(chart, true);
    }

    public void DimmerOnClick(View view) {
        float f = getWindow().getAttributes().screenBrightness;
        if (f < 0.0f) {
            f = -f;
        }
        int i = (int) (f * 100.0f);
        View inflate = this.layoutInflater.inflate(R.layout.dimmercontrol, (ViewGroup) null);
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
            String a = this.chartToShow != null ? this.chartToShow.mo469a() : this.f184ao != null ? this.f184ao.mo451a() : "";
            List c = C0111i.m419c(a);
            if (c != null && c.size() != 0) {
                List a2 = C0025ai.m320a(c);
                C0025ai aiVar = new C0025ai(this, R.layout.chartlist_lineitem, R.id.chartlist_index, a2);
                this.f201g = (ListView) this.favedChartListView.findViewById(R.id.faved_chartlist_list_view);
                this.f201g.setAdapter((ListAdapter) aiVar);
                this.f201g.setTextFilterEnabled(false);
                ((TextView) this.favedChartListView.findViewById(R.id.faved_chartlist_currenticao)).setText(a + " Favorites");
                if (a2 == null || a2.size() < 1) {
                    if (!this.favChartsPopupWindow.isShowing()) {
                        ((TextView) this.noFavsView.findViewById(R.id.NoFavs)).setText(a + " Favorites");
                        this.favChartsPopupWindow.showAsDropDown(this.favAllChartsButton, 2, 0);
                        m191a(this.favChartsPopupWindow, 350, this.favAllChartsButton);
                    }
                } else if (!this.gpsDataIconPopup.isShowing()) {
                    this.gpsDataIconPopup.showAsDropDown(this.favAllChartsButton, 2, 0);
                    m191a(this.gpsDataIconPopup, 350, this.favAllChartsButton);
                }
            } else if (!this.favChartsPopupWindow.isShowing()) {
                ((TextView) this.noFavsView.findViewById(R.id.NoFavs)).setText(a + " Favorites");
                this.favChartsPopupWindow.showAsDropDown(this.favAllChartsButton, 2, 0);
                m191a(this.favChartsPopupWindow, 350, this.favAllChartsButton);
            }
        } else if (!this.favChartsPopupWindow.isShowing()) {
            ((TextView) this.noFavsView.findViewById(R.id.NoFavs)).setText(R.string.nofavs);
            this.favChartsPopupWindow.showAsDropDown(this.favAllChartsButton, 2, 0);
            m191a(this.favChartsPopupWindow, 350, this.favAllChartsButton);
        }
    }

    public void GPSDataOnClick(View view) {
        m227r();
        this.noManualPopup.showAsDropDown(gpsDataIcon, 2, 0);
    }

    public void HelpOnClick(View view) {
        Log.d(f136V, "In HelpOnClick");
        if (this.settingsMenuPopupWindow.isShowing()) {
            this.settingsMenuPopupWindow.dismiss();
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
        if (this.settingsMenuPopupWindow.isShowing()) {
            this.settingsMenuPopupWindow.dismiss();
        }
        Intent intent = new Intent(this, ApplicationPreferencesActivity.class);
        intent.putExtra(":android:show_fragment", ApplicationPreferencesActivity.PreferencesFragment.class.getName());
        startActivity(intent);
    }

    public void RemoveTips(View view) {
        this.imageZoomView.setOnClickListener(null);
        mo148a();
        this.f170X = true;
        if (MobileTC.f436a) {
            Log.i(f136V, "RemoveTips() called, clearing screen");
        }
    }

    public void SettingsMenuOnClick(View view) {
        Log.d(f136V, "In SettingsMenuOnClick");
        this.settingsMenuPopupWindow.showAsDropDown(findViewById(R.id.settingsbutton), -230, 0);
    }

    public void SettingsOnClick(View view) {
        boolean z = false;
        if (this.settingsMenuPopupWindow.isShowing()) {
            this.settingsMenuPopupWindow.dismiss();
        }
        boolean b = C0002a.m7b();
        int b2 = C0005a.m31b();
        if (!C0115m.m451b("downloadIds", getApplicationContext()).isEmpty()) {
        }
        if (C0002a.m10c() && this.sharedPreferences.getBoolean("company_content", false)) {
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
        if (this.chartToShow == null || this.f184ao == null) {
            Log.d(f136V, "currentlySelectedChart is " + this.chartToShow + " airport is " + this.f184ao);
        } else if (m198a(this.chartToShow)) {
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
            if (this.imageZoomView.getDrawable() != null) {
                this.imageZoomView.getDrawable().setCallback(null);
            }
            this.imageZoomView.mo406a();
        } catch (Exception e) {
            Log.e(f136V, "Error clearing drawable in image view", e);
        }
    }

    public void afterTextChanged(Editable editable) {
    }

    /* renamed from: b */
    public void mo150b() {
        if (MobileTC.getCurrentBitmap() != null) { // return a bimap, so this must be the splash screen image
            m229s();
            this.imageZoomView.setImage(MobileTC.getCurrentBitmap());
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
        if (this.surfaceView.getBitmap() != null) {
            MobileTC.m72a(this.surfaceView.getBitmap());
        }
        System.gc();
        this.f172Z.setText(this.chartName);
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
        if (this.f188as && this.airportSearchEditText.getText().length() > 0) {
            ((C0066h) ((Filterable) this.f201g.getAdapter()).getFilter()).filter(this.airportSearchEditText.getText());
            this.f201g.setSelection(this.f206l);
        }
    }

    /* renamed from: e */
    public void mo154e() {
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
        this.f201g.setVisibility(8);
        ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewChart)).setVisibility(0);
    }

    /* renamed from: f */
    public void mo155f() {
        this.f201g = (ListView) this.viewSwitcher.findViewById(R.id.chartlist_list_view);
        this.f201g.setVisibility(0);
        ((ImageView) this.viewSwitcher.findViewById(R.id.NoFavsImageViewChart)).setVisibility(8);
    }

    /* renamed from: g */
    public void saveCurrentlySelectedChartToPreferences() {
        if (this.chartToShow != null) {
            C0115m.m449a(getString(R.string.selectedChart), C0111i.m413a(this.chartToShow.mo469a(), this.chartToShow.mo474c()), getApplicationContext());
        }
    }

    /* renamed from: h */
    public Chart mo157h() {
        this.chartToShow = null;
        String a = C0115m.m444a(getString(R.string.selectedChart), getApplicationContext());
        if (!a.isEmpty()) {
            String a2 = C0111i.m412a(a);
            String b = C0111i.m417b(a);
            for (Chart chart : JITHandler.m535c(a2)) {
                if (chart != null && chart.mo474c().equals(b)) {
                    this.chartToShow = chart;
                    return chart;
                }
            }
            if (this.chartToShow == null) {
                MobileTC.m70a(this, "Your previously viewed chart is not available");
            }
        }
        return this.chartToShow;
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
                    this.imageZoomView.setImageResource(R.drawable.jtstips_land_gps);
                } else {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_land);
                }
            }
        } else {
            findViewById(R.id.chartdisplaylayout).setBackgroundResource(R.drawable.background_port);
            if (this.f170X) {
                if (MobileTC.m84h()) {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_port_gps);
                } else {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_port);
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
                if (MobileTC.getCurrentBitmap() == null) {
                    return true;
                }
                C0116n.m456a(MobileTC.getCurrentBitmap(), this.chartName);
                return true;
            case UpdateService.f410g /*{ENCODED_INT: 5}*/:
                if (MobileTC.getCurrentBitmap() == null) {
                    return true;
                }
                C0116n.m456a(MobileTC.getCurrentBitmap(), this.chartName);
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
                this.chartToShow = null;
                mo148a();
                MobileTC.m72a((Bitmap) null);
                mo150b();
                this.imageZoomView.invalidate();
                this.imageZoomView.setOnClickListener(this.f166S);
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
                this.chartToShow = null;
                mo148a();
                MobileTC.m72a((Bitmap) null);
                mo150b();
                this.imageZoomView.invalidate();
                this.imageZoomView.setOnClickListener(this.f166S);
                SharedPreferences.Editor edit = this.sharedPreferences.edit();
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
            this.imageZoomView = (ImageZoomView) findViewById(R.id.imageView); // represents the actual image viewer, not the gl surface i think
            this.imageZoomView.setTouchListenerAndMoreHeightStuff();
            this.surfaceView = (TCLGLSurfaceView) findViewById(R.id.glSurfaceView);
            this.surfaceView.setMyHandler(this.f163P);
            this.imageZoomView.setOnClickListener(this.f166S);
            try {
                packageInfo = getPackageManager().getPackageInfo(getPackageName(), 1);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f136V, "Unable to get package info: ", e);
            }
            this.f178aG = "quickTips_" + packageInfo.versionCode;
            this.sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            MobileTC.m76b(this.sharedPreferences.getBoolean(this.f178aG, true));
            boolean z = this.sharedPreferences.getBoolean("quick_tips_preference", false);
            MobileTC.m78c(z);
            mo150b(); // sets the splash screen image I think
            this.f172Z = (TextView) findViewById(R.id.AirportName);
            if (MobileTC.f436a) {
                registerForContextMenu(this.f172Z);
            }
            this.layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
            this.inputMethodManager = (InputMethodManager) getSystemService("input_method");
            this.viewSwitcher = new ViewSwitcher(this);

            View inflate = this.layoutInflater.inflate(R.layout.airportlist, (ViewGroup) null);
            ((ListView) inflate.findViewById(R.id.airportlist_list_view)).setOnScrollListener(new C0073o(this));
            View inflate2 = this.layoutInflater.inflate(R.layout.chartlist, (ViewGroup) null);
            ((ListView) inflate2.findViewById(R.id.chartlist_list_view)).setOnScrollListener(new C0076r(this));

            this.viewSwitcher.addView(inflate, 0);
            this.viewSwitcher.addView(inflate2, 1);
            this.viewSwitcher.setBackgroundResource(R.drawable.dialog_full_holo_dark2);
            this.popupWindow = new PopupWindow(this.viewSwitcher, (int) (350.0f * f), 1535);
            this.popupWindow.setFocusable(true);
            this.popupWindow.setTouchable(true);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(false);
            this.popupWindow.setBackgroundDrawable(new BitmapDrawable());
            this.airportIcon = findViewById(R.id.airporticon);
            this.popupWindow.setOnDismissListener(new C0077s(this));
            this.airportSearchEditText = (EditText) this.viewSwitcher.findViewById(R.id.airportlist_search_view);
            this.airportSearchEditText.addTextChangedListener(this);
            Drawable drawable = getResources().getDrawable(R.drawable.dialog_full_holo_dark2);
            this.popupWindow2 = new PopupWindow(this);
            this.popupWindow2.setWidth((int) (380.0f * f));
            this.popupWindow2.setHeight(1535);
            this.popupWindow2.setFocusable(true);
            this.popupWindow2.setBackgroundDrawable(drawable);
            this.notamListView = this.layoutInflater.inflate(R.layout.notamslist, (ViewGroup) null);
            this.popupWindow2.setContentView(this.notamListView);
            this.notamIcon = findViewById(R.id.notamsicon);
            this.notamPopupWindow = new PopupWindow(this);
            this.notamPopupWindow.setWidth((int) (350.0f * f));
            this.notamPopupWindow.setHeight(620);
            this.notamPopupWindow.setFocusable(true);
            this.notamPopupWindow.setBackgroundDrawable(drawable);
            this.noNotamsView = this.layoutInflater.inflate(R.layout.nonotams, (ViewGroup) null);
            this.notamPopupWindow.setContentView(this.noNotamsView);
            this.noNotamsPopupWindow = new PopupWindow(this);
            this.noNotamsPopupWindow.setWidth((int) (450.0f * f));
            this.noNotamsPopupWindow.setHeight(300);
            this.noNotamsPopupWindow.setBackgroundDrawable(drawable);
            this.noNotamsPopupWindow.setFocusable(true);
            this.aboutView = this.layoutInflater.inflate(R.layout.aboutview, (ViewGroup) null);
            this.noNotamsPopupWindow.setContentView(this.aboutView);
            ((TextView) this.aboutView.findViewById(R.id.version_value)).setText(packageInfo.versionName);
            this.versionValueView = new PopupWindow(this);
            this.versionValueView.setWidth((int) (350.0f * f));
            this.versionValueView.setHeight(1535);
            this.versionValueView.setFocusable(true);
            this.versionValueView.setBackgroundDrawable(drawable);
            this.ManualListView = this.layoutInflater.inflate(R.layout.manualslist, (ViewGroup) null);
            this.versionValueView.setContentView(this.ManualListView);
            this.manualIcon = findViewById(R.id.manualsicon);
            this.manualPopupIcon = new PopupWindow(this);
            this.manualPopupIcon.setWidth((int) (350.0f * f));
            this.manualPopupIcon.setHeight(1535);
            this.manualPopupIcon.setFocusable(true);
            this.manualPopupIcon.setBackgroundDrawable(drawable);
            this.noManualView = this.layoutInflater.inflate(R.layout.nomanuals, (ViewGroup) null);
            this.manualPopupIcon.setContentView(this.noManualView);
            this.noManualPopup = new PopupWindow(this);
            this.noManualPopup.setWidth((int) (350.0f * f));
            this.noManualPopup.setHeight(1535);
            this.noManualPopup.setFocusable(true);
            this.noManualPopup.setBackgroundDrawable(drawable);
            this.gpsDataPopup = this.layoutInflater.inflate(R.layout.gpsdatapopup, (ViewGroup) null);
            this.noManualPopup.setContentView(this.gpsDataPopup);
            gpsDataIcon = (ImageButton) findViewById(R.id.GPSDataicon);
            this.gpsDataIconPopup = new PopupWindow(this);
            this.gpsDataIconPopup.setWidth((int) (350.0f * f));
            this.gpsDataIconPopup.setHeight(1535);
            this.gpsDataIconPopup.setFocusable(true);
            this.gpsDataIconPopup.setBackgroundDrawable(drawable);
            this.favedChartListView = this.layoutInflater.inflate(R.layout.faved_chartlist, (ViewGroup) null);
            this.gpsDataIconPopup.setContentView(this.favedChartListView);
            this.favChartsPopupWindow = new PopupWindow(this);
            this.favChartsPopupWindow.setWidth((int) (f * 350.0f));
            this.favChartsPopupWindow.setHeight(1535);
            this.favChartsPopupWindow.setFocusable(true);
            this.favChartsPopupWindow.setBackgroundDrawable(drawable);
            this.noFavsView = this.layoutInflater.inflate(R.layout.nofavorites, (ViewGroup) null);
            this.favChartsPopupWindow.setContentView(this.noFavsView);
            this.favAllChartsButton = findViewById(R.id.ChartFavoriteAll);
            settingsButton = (ImageButton) findViewById(R.id.settingsbutton);
            this.settingsMenuPopup = this.layoutInflater.inflate(R.layout.settingsmenupopup, (ViewGroup) null);
            this.settingsMenuPopup.measure(0, 0);
            int measuredWidth = this.settingsMenuPopup.getMeasuredWidth();
            this.settingsMenuPopupWindow = new PopupWindow(this);
            this.settingsMenuPopupWindow.setWidth(measuredWidth);
            this.settingsMenuPopupWindow.setHeight(this.settingsMenuPopup.getMeasuredHeight() + 50);
            this.settingsMenuPopupWindow.setFocusable(true);
            this.settingsMenuPopupWindow.setBackgroundDrawable(drawable);
            this.settingsMenuPopupWindow.setContentView(this.settingsMenuPopup);
            settingsPopupUpdateIcon = (ImageView) this.settingsMenuPopup.findViewById(R.id.settingsmenu_updateicon);
            new AsyncTaskC0023ag(this, null).execute(new Void[0]);
            new AsyncTaskC0114l().execute(getApplicationContext());
            this.f175aD = "eula_" + packageInfo.versionCode;
            if (z) {
                mo148a();
            } else {
                new AsyncTaskC0022af(this, null).execute(new Void[0]);
            }
            if (!this.sharedPreferences.getBoolean(this.f175aD, false)) {
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
        this.imageZoomView.setOnTouchListener(null);
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

    @SuppressLint("WrongConstant")
    public void onResume() {
        super.onResume();
        Log.i(f136V, "onResume");
        new AsyncTaskC0114l().execute(getApplicationContext());
        if (this.sharedPreferences == null) {
            this.sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        }
        MobileTC.m74a(this.sharedPreferences.getBoolean("show_ownship_apt_diagram", true));
        // something to do with quick tips
        if (this.sharedPreferences.getBoolean("quick_tips_preference", false)) {
            MobileTC.m78c(true);
            mo148a();
            MobileTC.m72a((Bitmap) null);
            this.f170X = true;
            mo150b();
            this.imageZoomView.setOnClickListener(this.f166S);
        }
        // place ownship icon on map I think
        if (MobileTC.m84h()) {
            ((LocationManager) getSystemService("location")).requestLocationUpdates("gps", 0, 0.0f, this.f165R);
            gpsDataIcon.setVisibility(0);
            if (this.f170X) {
                Configuration configuration = getResources().getConfiguration();
                if (configuration.orientation == 2) {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_land_gps);
                } else if (configuration.orientation == 1) {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_port_gps);
                }
            }
        } else {
            ((LocationManager) getSystemService("location")).removeUpdates(this.f165R);
            this.f165R.onLocationChanged(null);
            if (this.f214t != null) {
                this.f214t.cancel(true);
            }
            gpsDataIcon.setVisibility(4);
            if (this.f170X) {
                Configuration configuration2 = getResources().getConfiguration();
                if (configuration2.orientation == 2) {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_land);
                } else if (configuration2.orientation == 1) {
                    this.imageZoomView.setImageResource(R.drawable.jtstips_port);
                }
            }
        }
        if (this.sharedPreferences.getBoolean("keep_screen_on", false)) {
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
