.class public Lcom/jeppesen/android/tc/activity/LegalActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:I = 0x1


# instance fields
.field private b:Ljava/lang/StringBuffer;

.field private c:Ljava/lang/StringBuffer;

.field private d:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/LegalActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->b:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->c:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->d:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/LegalActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->b:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->c:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic c(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->d:Ljava/lang/StringBuffer;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/LegalActivity;->a:Ljava/lang/String;

    const-string v1, "Legal Activity onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->setContentView(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/LegalActivity;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    new-instance v1, Lcom/jeppesen/android/tc/activity/am;

    invoke-direct {v1, p0}, Lcom/jeppesen/android/tc/activity/am;-><init>(Lcom/jeppesen/android/tc/activity/LegalActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/LegalActivity;->a:Ljava/lang/String;

    const-string v1, "LegalActivity onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EULA_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "APP_EULA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/appEula.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jeppesen/android/tc/activity/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/activity/an;-><init>(Lcom/jeppesen/android/tc/activity/LegalActivity;Lcom/jeppesen/android/tc/activity/am;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->finish()V

    goto :goto_0
.end method
