.class Lcom/jeppesen/android/tc/activity/av;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/av;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;Lcom/jeppesen/android/tc/activity/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/av;-><init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/av;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/av;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->d(Ljava/lang/String;Landroid/content/Context;)F

    move-result v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "got screen brightness setting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/av;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/av;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/av;->a([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/av;->a(Ljava/lang/Float;)V

    return-void
.end method
