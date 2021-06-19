.class Lcom/jeppesen/android/tc/activity/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    check-cast p2, Lcom/jeppesen/android/tc/service/c;

    invoke-virtual {p2}, Lcom/jeppesen/android/tc/service/c;->a()Lcom/jeppesen/android/tc/service/UpdateService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/service/UpdateService;)Lcom/jeppesen/android/tc/service/UpdateService;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/bq;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/bq;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    new-instance v1, Lcom/jeppesen/android/tc/activity/bq;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {v1, v2}, Lcom/jeppesen/android/tc/activity/bq;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/bq;)Lcom/jeppesen/android/tc/activity/bq;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/service/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->q(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/service/UpdateService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/UpdateService;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(I)Z

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/service/UpdateService;)Lcom/jeppesen/android/tc/service/UpdateService;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->r(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    invoke-static {}, Lcom/jeppesen/android/tc/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->p(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Lcom/jeppesen/android/tc/activity/bq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/bq;->cancel(Z)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ay;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
