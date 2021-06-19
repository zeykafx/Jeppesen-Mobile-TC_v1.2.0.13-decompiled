.class public Lcom/jeppesen/android/tc/activity/UpdateActivity;
.super Landroid/app/Activity;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field private A:Ljava/io/File;

.field private B:Ljava/io/File;

.field private C:Ljava/util/List;

.field private D:Ljava/lang/StringBuffer;

.field private E:J

.field private F:Landroid/content/SharedPreferences;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:J

.field private N:J

.field private O:Ljava/util/Set;

.field private P:Landroid/content/BroadcastReceiver;

.field private Q:Landroid/content/ServiceConnection;

.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;

.field private i:Lcom/jeppesen/android/tc/service/UpdateService;

.field private j:Z

.field private k:I

.field private l:Lcom/jeppesen/android/tc/activity/bq;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/TextView;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b:Landroid/view/View;

    const/4 v0, -0x2

    iput v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->k:I

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->n:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->o:Landroid/widget/TextView;

    iput v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->s:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->t:Z

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->v:Z

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->w:Z

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->y:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->D:Ljava/lang/StringBuffer;

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->E:J

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->F:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->G:Ljava/lang/String;

    const-string v0, "DataEulaAccepted"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->H:Ljava/lang/String;

    const-string v0, "FirstDataEulaDownload"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->I:Ljava/lang/String;

    const-string v0, "dataEula_"

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->K:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->L:Landroid/widget/TextView;

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->N:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    new-instance v0, Lcom/jeppesen/android/tc/activity/ax;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/ax;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->P:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/jeppesen/android/tc/activity/ay;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/ay;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->Q:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->E:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/jeppesen/android/tc/activity/az;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/az;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->F:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/bq;)Lcom/jeppesen/android/tc/activity/bq;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/service/UpdateService;)Lcom/jeppesen/android/tc/service/UpdateService;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->C:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    return-void
.end method

.method private a(Lcom/jeppesen/android/tc/a/c;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/jeppesen/android/util/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->v:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f090049

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "I Accept"

    new-instance v2, Lcom/jeppesen/android/tc/activity/ba;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/ba;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "I Decline"

    new-instance v2, Lcom/jeppesen/android/tc/activity/bb;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/bb;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->D:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    new-instance v0, Lcom/jeppesen/android/tc/activity/bc;

    invoke-direct {v0, p0, p1}, Lcom/jeppesen/android/tc/activity/bc;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->J:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->C:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "loadedTailoredCoverageId"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/jeppesen/android/util/o;->a(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->k()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/a/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    new-instance v1, Lcom/jeppesen/android/tc/activity/bl;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/jeppesen/android/tc/activity/bl;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V

    new-array v6, v3, [Lcom/jeppesen/android/tc/a/c;

    aput-object v0, v6, v2

    invoke-virtual {v1, v6}, Lcom/jeppesen/android/tc/activity/bl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->E:J

    return-wide v0
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->j()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->a()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v1, Lcom/jeppesen/android/tc/activity/bm;

    invoke-direct {v1, p0, v6}, Lcom/jeppesen/android/tc/activity/bm;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V

    new-array v5, v3, [Lcom/jeppesen/android/tc/a/b;

    aput-object v0, v5, v2

    invoke-virtual {v1, v5}, Lcom/jeppesen/android/tc/activity/bm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    :cond_1
    :goto_2
    new-instance v0, Lcom/jeppesen/android/tc/activity/bk;

    invoke-direct {v0, p0, v6}, Lcom/jeppesen/android/tc/activity/bk;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->w:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->d()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->Q:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.jeppesen.android.tc.service.UpdateService_SN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.jeppesen.android.tc.service.UpdateService_SiteCode"

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.jeppesen.android.tc.service.UpdateService_SiteKey"

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.jeppesen.android.tc.service.UpdateService_NeedToResume"

    iget-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->t:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->F:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic g(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    return v0
.end method

.method static synthetic k(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p:I

    return v0
.end method

.method static synthetic m(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->N:J

    return-wide v0
.end method

.method static synthetic n(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    return-object v0
.end method

.method static synthetic q(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/service/UpdateService;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    return-object v0
.end method

.method static synthetic r(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->Q:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic s(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->A:Ljava/io/File;

    return-object v0
.end method

.method static synthetic u(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->C:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->z:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic w(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->B:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public SelectCoverageForDownload(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0, v3}, Lcom/jeppesen/android/tc/a/c;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->k()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/a/c;->a(Z)V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->y:Z

    :goto_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/activity/aw;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/aw;->notifyDataSetChanged()V

    return-void

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->y:Z

    goto :goto_2
.end method

.method public UpdateCoveragesOnClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/bn;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public UpdateOnClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    invoke-static {}, Lcom/jeppesen/android/c/a;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->t:Z

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    const-string v1, "Device is not online. Can\'t update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->w:Z

    if-eqz v0, :cond_1

    const-string v0, "loadedTailoredCoverageId"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jeppesen/android/tc/activity/bp;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/bp;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)Z
    .locals 12

    const v11, 0x7f070052

    const/16 v10, 0x64

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/UpdateService;->a()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/UpdateService;->a()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_5

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    if-ge v0, v10, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/UpdateService;->c()I

    move-result v0

    iget-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_1

    const-string v3, "downloadStartTime"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/m;->e(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    iget-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    const-string v3, "downloadStartTime"

    iget-wide v4, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;JLandroid/content/Context;)V

    :cond_1
    const-string v3, "percentsDownloaded"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/m;->c(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iget v4, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    if-eq v4, v0, :cond_5

    iput v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    sub-int v4, v0, v3

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    sub-long/2addr v4, v6

    sub-int v3, v0, v3

    int-to-long v6, v3

    div-long v3, v4, v6

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->N:J

    :cond_2
    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    if-le v0, v10, :cond_3

    iput v10, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    :cond_3
    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/UpdateService;->d()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p:I

    :cond_4
    new-instance v0, Lcom/jeppesen/android/tc/activity/bd;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/bd;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    iget v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->k:I

    if-ne v0, p1, :cond_6

    :goto_0
    return v1

    :cond_6
    iput p1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->k:I

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    new-instance v2, Lcom/jeppesen/android/tc/activity/bj;

    invoke-direct {v2, p0, v0}, Lcom/jeppesen/android/tc/activity/bj;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_0
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_6
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_7
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jeppesen/android/tc/activity/be;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/be;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_8
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jeppesen/android/tc/activity/bf;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/bf;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_9
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "downloadStartTime"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/m;->f(Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "percentsDownloaded"

    iget v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q:I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iput-wide v8, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    new-instance v2, Lcom/jeppesen/android/tc/activity/bg;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/bg;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :sswitch_a
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jeppesen/android/tc/activity/bh;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/bh;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "downloadStartTime"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->f(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "percentsDownloaded"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->f(Ljava/lang/String;Landroid/content/Context;)V

    iput-wide v8, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->M:J

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jeppesen/android/tc/activity/bi;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/bi;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->v:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->F:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->I:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :sswitch_c
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->K:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_d
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_e
    const/16 v0, -0x12

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    invoke-virtual {p0, v11}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :sswitch_f
    const/16 v0, -0x14

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    invoke-virtual {p0, v11}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :sswitch_10
    const/16 v0, -0x13

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    invoke-virtual {p0, v11}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_11
    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, -0xc

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, -0x32

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(I)V

    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32 -> :sswitch_13
        -0x14 -> :sswitch_f
        -0x13 -> :sswitch_10
        -0x12 -> :sswitch_e
        -0xc -> :sswitch_12
        -0xa -> :sswitch_11
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
    .end sparse-switch
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->w:Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->Q:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currently bound to UpdateService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->setContentView(I)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->c()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->A:Ljava/io/File;

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->d()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->B:Ljava/io/File;

    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b:Landroid/view/View;

    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->n:Landroid/widget/ProgressBar;

    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->L:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const v2, 0x7f070052

    const v1, 0x7f070057

    const v0, 0x7f070053

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i:Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/UpdateService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x32 -> :sswitch_7
        -0x14 -> :sswitch_3
        -0x13 -> :sswitch_4
        -0x12 -> :sswitch_2
        -0xc -> :sswitch_6
        -0xa -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x4 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->Q:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bq;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l:Lcom/jeppesen/android/tc/activity/bq;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f070039

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "downloadIds"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/m;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/jeppesen/android/util/g;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/util/g;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/util/g;->b(Ljava/util/Set;)Z

    move-result v0

    const-string v2, "downloadIds"

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    :goto_0
    iget-boolean v2, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->O:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/UpdateActivity;->x:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->UpdateOnClick(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/jeppesen/android/tc/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method
