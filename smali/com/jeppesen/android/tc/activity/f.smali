.class Lcom/jeppesen/android/tc/activity/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ActivationActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;Lcom/jeppesen/android/tc/activity/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/f;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v1, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Lcom/jeppesen/android/tc/activity/ActivationActivity;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "username"

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->f(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "password"

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/m;->f(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/f;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/f;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
