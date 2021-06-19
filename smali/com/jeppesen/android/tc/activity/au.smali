.class Lcom/jeppesen/android/tc/activity/au;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/SplashScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    const-string v0, "done"

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in_doInBackground - starting initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/MobileTC;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/MobileTC;->m()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in_doInBackground - initialization finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "rooted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/au;->a:Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;->c:Z

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/au;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/au;->a(Ljava/lang/String;)V

    return-void
.end method
