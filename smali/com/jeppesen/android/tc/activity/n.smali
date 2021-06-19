.class Lcom/jeppesen/android/tc/activity/n;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/n;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->b:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;Lcom/jeppesen/android/tc/activity/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/n;-><init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    iput-boolean v2, v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->b:Landroid/content/SharedPreferences;

    const-string v1, "company_content"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/tc/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jeppesen/android/tc/a/a;->a(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->d(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->c:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 2

    sput-object p1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->b:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/n;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/n;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/n;->a(Ljava/util/List;)V

    return-void
.end method
