.class Lcom/jeppesen/android/tc/activity/ax;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_download_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "downloadIds"

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v4}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    new-instance v2, Lcom/jeppesen/android/util/g;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {v2, v3}, Lcom/jeppesen/android/util/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/jeppesen/android/util/g;->a(J)Lcom/jeppesen/android/util/h;

    move-result-object v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(ACTION_DOWNLOAD_COMPLETE): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/jeppesen/android/util/h;->b()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ax;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
