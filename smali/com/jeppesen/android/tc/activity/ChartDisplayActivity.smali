.class public Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final V:Ljava/lang/String;

.field private static final aA:I = 0x1

.field private static final aB:I = 0x2

.field private static final ad:I = 0x0

.field private static final ae:I = 0x1

.field private static final af:I = 0x0

.field private static final ag:I = 0x1

.field private static final ah:I = 0x2

.field private static final ai:I = 0x3

.field private static aj:Landroid/widget/ImageButton;

.field private static ak:Landroid/widget/ImageButton;

.field private static al:Landroid/widget/ImageView;


# instance fields
.field A:Landroid/view/View;

.field B:Landroid/widget/PopupWindow;

.field C:Landroid/widget/PopupWindow;

.field D:Landroid/view/View;

.field E:Landroid/view/View;

.field F:Landroid/view/View;

.field G:Landroid/widget/PopupWindow;

.field H:Landroid/widget/PopupWindow;

.field I:Landroid/view/View;

.field J:Landroid/view/View;

.field K:Landroid/view/View;

.field L:Landroid/widget/PopupWindow;

.field M:Landroid/view/View;

.field N:Landroid/widget/PopupWindow;

.field O:Landroid/view/View;

.field final P:Landroid/os/Handler;

.field Q:Lcom/jeppesen/android/tc/activity/a/a;

.field private R:Landroid/location/LocationListener;

.field private S:Landroid/view/View$OnClickListener;

.field private T:Landroid/os/Handler;

.field private U:Ljava/lang/Runnable;

.field private W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

.field private X:Z

.field private Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

.field private Z:Landroid/widget/TextView;

.field a:Landroid/view/LayoutInflater;

.field private final aC:Ljava/lang/String;

.field private aD:Ljava/lang/String;

.field private aE:Landroid/content/SharedPreferences;

.field private final aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aa:J

.field private ab:Ljava/lang/String;

.field private ac:Landroid/widget/PopupWindow;

.field private am:Ljava/util/List;

.field private an:Ljava/util/Iterator;

.field private ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

.field private ap:Ljava/util/List;

.field private aq:Ljava/util/Iterator;

.field private ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

.field private as:Z

.field private at:Z

.field private au:I

.field private av:Ljava/lang/String;

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Ljava/lang/String;

.field b:Landroid/view/inputmethod/InputMethodManager;

.field c:Landroid/widget/PopupWindow;

.field d:Landroid/widget/ViewSwitcher;

.field e:I

.field f:Ljava/lang/String;

.field g:Landroid/widget/ListView;

.field h:Landroid/widget/EditText;

.field i:Landroid/view/View;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Landroid/widget/ListView;

.field q:Landroid/widget/ListView;

.field r:Z

.field s:Landroid/location/Location;

.field t:Lcom/jeppesen/android/tc/activity/ae;

.field u:Landroid/widget/PopupWindow;

.field v:Landroid/widget/PopupWindow;

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field y:Landroid/view/View;

.field z:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/jeppesen/android/tc/activity/x;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/x;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    new-instance v0, Lcom/jeppesen/android/tc/activity/y;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/y;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->S:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    new-instance v0, Lcom/jeppesen/android/tc/activity/p;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/p;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aa:J

    iput v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    new-instance v0, Lcom/jeppesen/android/tc/activity/q;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/q;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->P:Landroid/os/Handler;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->am:Ljava/util/List;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->an:Ljava/util/Iterator;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ap:Ljava/util/List;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aq:Ljava/util/Iterator;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    iput-boolean v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    iput-boolean v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    iput v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->au:I

    const-string v0, "/mnt/sdcard/charts"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->av:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    iput-boolean v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ax:Z

    iput-boolean v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    const-string v0, "eula_"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aC:Ljava/lang/String;

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v0, "quickTips_"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aF:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aa:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090049

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/appEula.html"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020021

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070066

    new-instance v2, Lcom/jeppesen/android/tc/activity/v;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/v;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070067

    new-instance v2, Lcom/jeppesen/android/tc/activity/w;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/w;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Airport;)Lcom/jeppesen/jeppview/jtca/data/Airport;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;)Lcom/jeppesen/jeppview/jtca/data/Chart;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->az:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->an:Ljava/util/Iterator;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->am:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/widget/PopupWindow;ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v1

    const/16 v2, 0x26c

    if-ge v1, v2, :cond_0

    int-to-float v2, p2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/PopupWindow;->update(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/widget/PopupWindow;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V

    return-void
.end method

.method private a(Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/activity/ar;

    invoke-virtual {v0, p1}, Lcom/jeppesen/android/tc/activity/ar;->getPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/jeppesen/android/tc/activity/ar;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q:Landroid/widget/ListView;

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    return v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    return p1
.end method

.method private a(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/jeppesen/android/util/i;->c(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/jeppesen/android/util/i;->e(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/jeppesen/android/util/i;->d(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ac:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aq:Ljava/util/Iterator;

    return-object p1
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ap:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    return-void
.end method

.method private b(Lcom/jeppesen/jeppview/jtca/data/Chart;)V
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedChart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b(Lcom/jeppesen/jeppview/jtca/data/Chart;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/jeppesen/android/util/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to extract Chart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for Airport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from current database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aa:J

    :cond_1
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s()V

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ab:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setPathToTcl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setIcao(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setIndexNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setProcedureId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->setChartType(Ljava/lang/String;)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->l()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->requestRender()V

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g()V

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->c(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    return-object v0
.end method

.method static synthetic f(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n()V

    return-void
.end method

.method static synthetic g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    return-object v0
.end method

.method static synthetic h(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/views/imagezoom/ImageZoomView;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    return-object v0
.end method

.method static synthetic i(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r()V

    return-void
.end method

.method static synthetic j(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic k(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->am:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m()Landroid/widget/ImageButton;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aj:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic m(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->an:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic n(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aq:Ljava/util/Iterator;

    return-object v0
.end method

.method private n()V
    .locals 5

    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q:Landroid/widget/ListView;

    new-instance v2, Lcom/jeppesen/android/tc/activity/ar;

    const v3, 0x7f03001b

    const v4, 0x7f090097

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/jeppesen/android/tc/activity/ar;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic o(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ap:Ljava/util/List;

    return-object v0
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/jeppesen/android/tc/MobileTC;->c(Z)V

    invoke-static {v2}, Lcom/jeppesen/android/tc/MobileTC;->b(Z)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quick_tips_preference"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->au:I

    return v0
.end method

.method private p()V
    .locals 9

    const v8, 0x7f02001a

    const v7, 0x7f020019

    const v6, 0x7f020017

    const v5, 0x7f020015

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v4, 0x7f020016

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Charts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f020018

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->A:Landroid/view/View;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/jeppesen/android/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f07008c

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s()V

    return-void
.end method

.method static synthetic r(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)I
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->au:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->au:I

    return v0
.end method

.method private r()V
    .locals 20

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->g()Landroid/location/Location;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v6, 0x7f090055

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v7, 0x7f090057

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v8, 0x7f090059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v9, 0x7f09005b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    const v11, 0x7f09005c

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "kk:mm:ss"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v13, "GMT"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Z"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "unavailable"

    invoke-virtual {v10}, Landroid/location/Location;->hasAccuracy()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v11, 0x42000000    # 32.0f

    cmpl-float v2, v2, v11

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weak ("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "m)"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "ON"

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    const-wide/16 v2, 0x0

    cmpl-double v2, v11, v2

    if-ltz v2, :cond_4

    const-string v2, "N"

    move-object v3, v2

    :goto_1
    const-wide/16 v15, 0x0

    cmpl-double v2, v13, v15

    if-ltz v2, :cond_5

    const-string v2, "E"

    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    double-to-int v4, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    double-to-int v15, v15

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    int-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v11, v11, v18

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    int-to-double v0, v15

    move-wide/from16 v18, v0

    sub-double v13, v13, v18

    mul-double v13, v13, v16

    new-instance v16, Ljava/text/DecimalFormat;

    const-string v17, "#.#"

    invoke-direct/range {v16 .. v17}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "unavailable"

    invoke-virtual {v10}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "unavailable"

    invoke-virtual {v10}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " knots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const-string v2, ""

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ON"

    :goto_4
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "m"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const-string v2, "S"

    move-object v3, v2

    goto/16 :goto_1

    :cond_5
    const-string v2, "W"

    goto/16 :goto_2

    :cond_6
    const-string v10, ""

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "OFF"

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    const-string v3, "OFF"

    const-string v2, "In Settings->Preferences"

    goto :goto_4
.end method

.method static synthetic s(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    return-object v0
.end method

.method private s()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->c()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a(Z)V

    iput-boolean v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    return-void
.end method

.method private t()V
    .locals 4

    const/4 v2, 0x0

    const v3, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0, v3}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    const/4 v1, 0x0

    const v2, 0x1

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a(Z)V


    return-void
.end method

.method private v()V
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->e()V

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->d()V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->av:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    add-int/lit8 v0, v1, 0x1

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " charts in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v7, v7

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v7, v9

    int-to-double v9, v0

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds per chart average"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total Chart count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AboutOnClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$AboutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public AirportFavedToggle(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirportFavedToggle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->g(Ljava/lang/String;)V

    const v0, 0x7f02001e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->f(Ljava/lang/String;)V

    const v0, 0x7f02001f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public AirportListAllAirportsOnClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "AirportListAllAirportsOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v7, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jeppesen/android/tc/activity/g;

    const v2, 0x7f030003

    const v3, 0x7f09001e

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s:Landroid/location/Location;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jeppesen/android/tc/activity/g;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public AirportListClearSearchOnClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public AirportListFavoritesOnClick(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f09001b

    const v8, 0x7f020005

    const v7, 0x7f020002

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Lcom/jeppesen/android/util/i;->a()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v9}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/jeppesen/android/tc/activity/g;

    const v2, 0x7f030003

    const v3, 0x7f09001e

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jeppesen/android/tc/activity/g;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v9}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iput-boolean v6, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    return-void
.end method

.method public AirportSelectedOnClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedAirport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/jeppesen/android/tc/activity/g;->b:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v2}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    iput v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n:I

    :cond_1
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-nez v1, :cond_2

    iput v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    iput v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n:I

    :cond_2
    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_4

    :cond_3
    const-string v0, "Charts for this airport are not available"

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ai;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/jeppesen/android/tc/activity/ai;

    const v2, 0x7f030009

    const v3, 0x7f090040

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/jeppesen/android/tc/activity/ai;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v5}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x10a0002

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x10a0003

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    if-ne v0, v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ChartListFavoritesOnClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public AirportsOnClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x15e

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090029

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ChartListFavoritesOnClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x10a0002

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x10a0003

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput v6, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j:I

    :cond_4
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    if-nez v0, :cond_9

    invoke-static {}, Lcom/jeppesen/android/util/i;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_a

    :cond_8
    const-string v0, "No airports currently available.\n\nIf you are currently updating your subscriptions, try again in a few moments."

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s:Landroid/location/Location;

    goto :goto_1

    :cond_a
    new-instance v0, Lcom/jeppesen/android/tc/activity/g;

    const v2, 0x7f030003

    const v3, 0x7f09001e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jeppesen/android/tc/activity/g;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d()V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_b
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f040001

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2
.end method

.method public CCNOnClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->F:Landroid/view/View;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    const/16 v1, 0x15e

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v1, Lcom/jeppesen/android/tc/activity/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jeppesen/android/tc/activity/ad;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public ChartFavedToggle(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chartFavedToggle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f02001e

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-ne v0, v1, :cond_1

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->c(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v1, 0x7f02001f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public ChartGroupSelected(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChartGroupSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x3

    iput v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/jeppesen/android/tc/activity/ai;

    const v0, 0x7f030009

    const v3, 0x7f090040

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/jeppesen/android/tc/activity/ai;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    return-void
.end method

.method public ChartListAllChartsOnClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "ChartListAllChartsOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ai;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/jeppesen/android/tc/activity/ai;

    const v2, 0x7f030009

    const v3, 0x7f090040

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/jeppesen/android/tc/activity/ai;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public ChartListBackOnClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ChartListGroupsOnClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->AirportsOnClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ChartListFavoritesOnClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "ChartListFavoritesOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f()V

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ai;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/jeppesen/android/tc/activity/ai;

    const v2, 0x7f030009

    const v3, 0x7f090040

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/jeppesen/android/tc/activity/ai;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_0
.end method

.method public ChartListGroupsOnClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e:I

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ai;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    instance-of v0, v0, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jeppesen/android/tc/activity/ah;

    const v2, 0x7f030006

    const v3, 0x7f090024

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jeppesen/android/tc/activity/ah;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/jeppesen/jeppview/jtca/data/Airport;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "No charts available to group"

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ChartSelectedFromScrubberOnClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Currently rendering chart. Please wait."

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->d(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->o()V

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    goto :goto_0
.end method

.method public ChartSelectedOnClick(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->o()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V

    return-void
.end method

.method public DimmerOnClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x64

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/PopupWindow;

    const/16 v3, 0x140

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ac:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ac:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f090048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ac:Landroid/widget/PopupWindow;

    const v2, 0x7f09002f

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, -0xe6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ac:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/jeppesen/android/tc/activity/t;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/t;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v1, Lcom/jeppesen/android/tc/activity/u;

    invoke-direct {v1, p0}, Lcom/jeppesen/android/tc/activity/u;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public FavAllOnClick(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f090074

    const/16 v7, 0x15e

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "FavAllOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/jeppesen/android/util/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Favorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ai;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/jeppesen/android/tc/activity/ai;

    const v0, 0x7f030009

    const v4, 0x7f090040

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/jeppesen/android/tc/activity/ai;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->x:Landroid/view/View;

    const v4, 0x7f09004c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->x:Landroid/view/View;

    const v3, 0x7f09004b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Favorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Favorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    invoke-direct {p0, v0, v7, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Landroid/widget/PopupWindow;ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public GPSDataOnClick(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->r()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aj:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public HelpOnClick(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "In HelpOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "exception creating help dialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public LaunchReaderOnClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "LaunchReaderOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->c()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File to open in PDF reader is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "No Application available to view pdf"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ManualsOnClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/jeppesen/android/tc/activity/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/ac;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public PreferencesOnClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "In PreferencesOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public RemoveTips(Landroid/view/View;)V
    .locals 3

    const v2, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    const/4 v0, 0x0

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "RemoveTips() called, clearing screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public SettingsMenuOnClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "In SettingsMenuOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    const v1, 0x7f09002d

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, -0xe6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public SettingsOnClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/a/a;->b()Z

    move-result v1

    invoke-static {}, Lcom/jeppesen/android/c/a;->b()I

    move-result v2

    const-string v3, "downloadIds"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/m;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_1
    invoke-static {}, Lcom/jeppesen/android/a/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v4, "company_content"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    :cond_3
    if-nez v1, :cond_4

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public ToggleFavoriteOnClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f09002e

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "ToggleFavoriteOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    const v0, 0x7f020042

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02001f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    const v0, 0x7f020041

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02001e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentlySelectedChart is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " airport is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ao:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v2, "Error clearing drawable in image view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method b()V
    .locals 2

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImage(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method c()V
    .locals 6

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "renderComplete() called in ChartSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->d(Z)V

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "************** Time for complete chart render is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aa:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j()V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->as:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/activity/h;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/h;->filter(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public h()Lcom/jeppesen/jeppview/jtca/data/Chart;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/jeppesen/jeppview/jtca/JITHandler;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    if-nez v0, :cond_2

    const-string v0, "Your previously viewed chart is not available"

    invoke-static {p0, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    goto :goto_0
.end method

.method i()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method j()V
    .locals 4

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method k()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v2, 0x7f090027

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const v4, 0x7f070004

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->k()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->e()V

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->d()V

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->am:Ljava/util/List;

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->an:Ljava/util/Iterator;

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ap:Ljava/util/List;

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aq:Ljava/util/Iterator;

    iput v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->au:I

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->av:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ab:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/n;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ab:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/n;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v()V

    goto :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->av:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unpackedtcl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/io/File;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unpackedtcl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/io/File;)Z

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ax:Z

    if-nez v0, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ax:Z

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ax:Z

    invoke-static {v0}, Lcom/jeppesen/android/c/a;->a(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    invoke-static {v3}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_9
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/a/a;->b()V

    :goto_3
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-direct {v3, p0, v4, v0}, Lcom/jeppesen/android/tc/activity/a/a;-><init>(Landroid/app/Activity;Landroid/location/LocationListener;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/a/a;->a()V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-direct {v2, p0, v3, v0}, Lcom/jeppesen/android/tc/activity/a/a;-><init>(Landroid/app/Activity;Landroid/location/LocationListener;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/a/a;->a()V

    iput-boolean v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/jeppesen/android/tc/activity/z;

    invoke-direct {v0, p0, v3}, Lcom/jeppesen/android/tc/activity/z;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0, v4}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ar:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    invoke-static {v3}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aG:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/high16 v7, 0x43af0000    # 350.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v2, "onCreate() called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->setContentView(I)V

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->q:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b()V

    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Y:Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->setMyHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quickTips_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aG:Ljava/lang/String;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aG:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->b(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v3, "quick_tips_preference"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/jeppesen/android/tc/MobileTC;->c(Z)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b()V

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Z:Landroid/widget/TextView;

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->registerForContextMenu(Landroid/view/View;)V

    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Landroid/widget/ViewSwitcher;

    invoke-direct {v0, p0}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f090018

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v5, Lcom/jeppesen/android/tc/activity/o;

    invoke-direct {v5, p0}, Lcom/jeppesen/android/tc/activity/o;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f090038

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v6, Lcom/jeppesen/android/tc/activity/r;

    invoke-direct {v6, p0}, Lcom/jeppesen/android/tc/activity/r;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const/4 v4, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v4, 0x7f02001d

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    mul-float v5, v7, v2

    float-to-int v5, v5

    const/16 v6, 0x5ff

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/jeppesen/android/tc/activity/s;

    invoke-direct {v4, p0}, Lcom/jeppesen/android/tc/activity/s;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    const v4, 0x7f090016

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f02001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    const/high16 v5, 0x43be0000    # 380.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    const/16 v5, 0x5ff

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030017

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->E:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    mul-float v5, v7, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    const/16 v5, 0x5ff

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030016

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->F:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->F:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    const/high16 v5, 0x43e10000    # 450.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    const/16 v5, 0x12c

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->z:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->A:Landroid/view/View;

    const v5, 0x7f090005

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    mul-float v5, v7, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    const/16 v5, 0x5ff

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->J:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->I:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    mul-float v5, v7, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    const/16 v5, 0x5ff

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030015

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->K:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->K:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    mul-float v5, v7, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    const/16 v5, 0x17c

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aj:Landroid/widget/ImageButton;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    mul-float v5, v7, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    const/16 v5, 0x5ff

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->v:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    const/16 v2, 0x5ff

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->u:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->w:Landroid/view/View;

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ak:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->N:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->O:Landroid/view/View;

    const v2, 0x7f09008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->al:Landroid/widget/ImageView;

    new-instance v0, Lcom/jeppesen/android/tc/activity/ag;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/jeppesen/android/tc/activity/ag;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/jeppesen/android/util/l;

    invoke-direct {v0}, Lcom/jeppesen/android/util/l;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/util/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eula_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aD:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    :goto_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aD:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->showDialog(I)V

    :goto_2
    new-instance v0, Lcom/jeppesen/android/tc/activity/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/ab;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ab;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v4, "Unable to get package info: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v0, Lcom/jeppesen/android/tc/activity/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/af;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/af;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/jeppesen/android/tc/activity/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/aa;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const-string v0, "TC Debug Menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->at:Z

    if-eqz v0, :cond_0

    const-string v0, "Start Chart Display Test"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aw:Z

    if-eqz v0, :cond_1

    const-string v0, "Use Demo Chart Data"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_1
    const/4 v0, 0x4

    const-string v1, "Save Compressed Chart Image to Gallery"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x7

    const-string v1, "Empty chart cache"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ax:Z

    if-eqz v0, :cond_2

    const-string v0, "Use production Update Server(s)"

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_2
    const/16 v0, 0x9

    const-string v1, "Blank out currently selected chart"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    if-eqz v0, :cond_3

    const-string v0, "Stop Taxi Tour"

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_3
    const/16 v0, 0xc

    const-string v1, "Deactivate Device"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v0, 0xd

    const-string v1, "Reset QuickTips"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    :cond_0
    const-string v0, "Stop Chart Display Test"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->av:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for Chart Data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    const-string v0, "Use november Update Server"

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    const-string v0, "Start KORD Taxi Tour"

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v0, 0xb

    const-string v1, "Start KDEN Taxi Tour"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f09005e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->az:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "about:blank"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ae;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->Q:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/a/a;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->ay:Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x80

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->V:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jeppesen/android/util/l;

    invoke-direct {v0}, Lcom/jeppesen/android/util/l;-><init>()V

    new-array v1, v6, [Landroid/content/Context;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/util/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v1, "show_ownship_apt_diagram"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v1, "quick_tips_preference"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/jeppesen/android/tc/MobileTC;->c(Z)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a()V

    invoke-static {v3}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aE:Landroid/content/SharedPreferences;

    const-string v1, "keep_screen_on"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    return-void

    :cond_3
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->R:Landroid/location/LocationListener;

    invoke-interface {v0, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    invoke-virtual {v0, v6}, Lcom/jeppesen/android/tc/activity/ae;->cancel(Z)Z

    :cond_5
    sget-object v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->aj:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->X:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_6

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->W:Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/activity/h;

    invoke-virtual {v0, p1}, Lcom/jeppesen/android/tc/activity/h;->filter(Ljava/lang/CharSequence;)V

    iput v1, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l:I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
