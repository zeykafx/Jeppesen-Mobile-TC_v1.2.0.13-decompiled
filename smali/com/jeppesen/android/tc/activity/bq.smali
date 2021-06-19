.class Lcom/jeppesen/android/tc/activity/bq;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bq;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceProgressObserver.doInBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/bq;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bq;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/service/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bq;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bq;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/service/UpdateService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/UpdateService;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/bq;->cancel(Z)Z

    :cond_0
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "done"

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceProgessObserver.onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bq;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bq;->a(Ljava/lang/String;)V

    return-void
.end method
