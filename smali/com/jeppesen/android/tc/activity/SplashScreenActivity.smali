.class public Lcom/jeppesen/android/tc/activity/SplashScreenActivity;
.super Landroid/app/Activity;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a:Z

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->c:Z

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->d:I

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->e:Ljava/lang/String;

    const-string v1, "About to launch ChartDisplay activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jeppesen.android.tc.activity.ChartDisplayActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->e:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/av;

    invoke-direct {v0, p0, v3}, Lcom/jeppesen/android/tc/activity/av;-><init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;Lcom/jeppesen/android/tc/activity/at;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->setContentView(I)V

    invoke-static {v3}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->e:Ljava/lang/String;

    const-string v1, "skipping splash screen because image is already set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jeppesen/android/tc/activity/au;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/au;-><init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/au;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/jeppesen/android/tc/activity/at;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/at;-><init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b:Z

    iput-boolean v1, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a:Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
