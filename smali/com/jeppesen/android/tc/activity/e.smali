.class Lcom/jeppesen/android/tc/activity/e;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ActivationActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;Lcom/jeppesen/android/tc/activity/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/e;-><init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->f(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ge v0, v4, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling activation server failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->c(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/jeppesen/android/a/a;->e()Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->g(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->h(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->i(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->i(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->i(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "company_content"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/e;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v1, v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Lcom/jeppesen/android/tc/activity/ActivationActivity;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/e;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/e;->a(Ljava/lang/Integer;)V

    return-void
.end method
