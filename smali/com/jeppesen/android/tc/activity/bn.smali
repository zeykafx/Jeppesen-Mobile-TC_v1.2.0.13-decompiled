.class Lcom/jeppesen/android/tc/activity/bn;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/bn;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->b(Ljava/util/Map;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->c(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    new-instance v3, Lcom/jeppesen/android/tc/activity/bo;

    invoke-direct {v3, p0, v1}, Lcom/jeppesen/android/tc/activity/bo;-><init>(Lcom/jeppesen/android/tc/activity/bn;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected a(Ljava/util/List;)V
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, p1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Lcom/jeppesen/android/tc/activity/aw;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f03001d

    const v3, 0x7f09009a

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v4}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jeppesen/android/tc/activity/aw;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->v(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "loadedTailoredCoverageId"

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->u(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bn;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bn;->a(Ljava/util/List;)V

    return-void
.end method
