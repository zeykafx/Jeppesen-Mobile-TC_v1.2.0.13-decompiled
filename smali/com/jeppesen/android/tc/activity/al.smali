.class Lcom/jeppesen/android/tc/activity/al;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;Lcom/jeppesen/android/tc/activity/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/al;-><init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/jeppesen/android/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jeppesen/android/a/a;->g()V

    :cond_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v2}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050001

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/m;->a(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v2}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jeppesen/android/tc/activity/SplashScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v2, v1}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->finish()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/al;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/al;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/al;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
