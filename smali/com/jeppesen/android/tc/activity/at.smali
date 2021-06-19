.class Lcom/jeppesen/android/tc/activity/at;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    iget-boolean v1, v1, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    iget v1, v1, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->d:I

    if-ge v0, v1, :cond_1

    :cond_0
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Lcom/jeppesen/android/tc/activity/at;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->finish()V

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInitFinished, continuing to chart display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashThread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->finish()V

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInitFinished, continuing to chart display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->finish()V

    sget-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appInitFinished, continuing to chart display"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/at;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->a()V

    throw v0
.end method
