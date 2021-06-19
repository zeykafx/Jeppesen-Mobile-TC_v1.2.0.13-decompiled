.class Lcom/jeppesen/android/tc/activity/a/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/a/a;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/a/b;->a:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/b;->a:Lcom/jeppesen/android/tc/activity/a/a;

    iget-boolean v0, v0, Lcom/jeppesen/android/tc/activity/a/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/b;->a:Lcom/jeppesen/android/tc/activity/a/a;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/a/a;->a(Lcom/jeppesen/android/tc/activity/a/a;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/b;->a:Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/a/a;->a:Landroid/app/Activity;

    new-instance v2, Lcom/jeppesen/android/tc/activity/a/c;

    invoke-direct {v2, p0, v0}, Lcom/jeppesen/android/tc/activity/a/c;-><init>(Lcom/jeppesen/android/tc/activity/a/b;Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/a/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
