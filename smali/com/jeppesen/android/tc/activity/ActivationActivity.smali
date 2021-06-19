.class public Lcom/jeppesen/android/tc/activity/ActivationActivity;
.super Landroid/app/Activity;


# static fields
.field private static final A:I = 0xc

.field private static final B:I = 0xd

.field private static final C:I = 0xe

.field private static final D:I = 0x0

.field private static final E:I = 0x1

.field private static final a:Ljava/lang/String;

.field private static final o:I = 0x0

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x3

.field private static final s:I = 0x4

.field private static final t:I = 0x5

.field private static final u:I = 0x6

.field private static final v:I = 0x7

.field private static final w:I = 0x8

.field private static final x:I = 0x9

.field private static final y:I = 0xa

.field private static final z:I = 0xb


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ViewFlipper;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->n:Landroid/content/SharedPreferences;

    return-void
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

    new-instance v2, Lcom/jeppesen/android/tc/activity/b;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/b;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ActivationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.jeppesen.android.tc.activity.UpdateActivity_tailoredMode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->finish()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Login"

    new-instance v2, Lcom/jeppesen/android/tc/activity/c;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/c;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/jeppesen/android/tc/activity/d;

    invoke-direct {v2, p0}, Lcom/jeppesen/android/tc/activity/d;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->n:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic g(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ViewFlipper;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->i:Landroid/widget/ViewFlipper;

    return-object v0
.end method


# virtual methods
.method public ActivateButtonOnClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    const v1, 0x7f09000c

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c()V

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a:Ljava/lang/String;

    const-string v1, "Device is not online. Can\'t update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/android/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    goto :goto_0

    :cond_6
    const-string v1, "IATAConversionCRC"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->generateSiteCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->generateActivationCodeFromSiteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/e;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;Lcom/jeppesen/android/tc/activity/a;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code generating siteKey."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    goto/16 :goto_0
.end method

.method public DemoButtonOnClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/jeppesen/android/tc/activity/a;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/a;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->finish()V

    return-void
.end method

.method public LoginButtonOnClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a()V

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b()V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b()V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a:Ljava/lang/String;

    const-string v1, "Device is not online. Can\'t autheticate user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b()V

    goto :goto_0

    :cond_4
    const-string v0, "username"

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "password"

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/f;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;Lcom/jeppesen/android/tc/activity/a;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public LoginCancelButtonOnClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    return-void
.end method

.method a()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method b()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method c()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method d()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->n:Landroid/content/SharedPreferences;

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->setContentView(I)V

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ActivationActivity;->l:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const v1, 0x7f070058

    const v0, 0x7f070056

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "Device Activation"

    const-string v1, "You must enter a valid Jeppesen Serial Number to activate."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "Device Activation"

    const-string v1, "Name field cannot be empty."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "Device Activation"

    const-string v1, "Can\'t connect to Jeppesen Activation Server. Is your device online?"

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Company Content"

    const-string v1, "Are you sure you want to cancel access to company content?"

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "Login Error"

    const-string v1, "Name field cannot be empty."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "Login Error"

    const-string v1, "Password field cannot be empty."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "Login Error"

    const-string v1, "Server problem: The Internet connection appears to be offline."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "Login Error"

    const-string v1, "Invalid Username or Password. Please try again."

    invoke-direct {p0, v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
