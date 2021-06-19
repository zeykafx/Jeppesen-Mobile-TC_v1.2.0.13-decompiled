.class public Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;
.super Landroid/preference/PreferenceFragment;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->b:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ManualsPrefScreenKey"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    const-string v1, "Connection error, unable to connect to server."

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/jeppesen/android/tc/a/a;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Updates are ready"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_5

    const-string v1, "None downloaded"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v1, "Manuals are current"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const-string v0, "ManualsPrefScreenKey"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Manuals are not available in Demo mode"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "chartCyclePrefKey"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/preferences/ChartCycleTextViewPreference;

    invoke-static {}, Lcom/jeppesen/android/c/a;->b()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v0, v6}, Lcom/jeppesen/android/preferences/ChartCycleTextViewPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v0, "downloadIds"

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/jeppesen/android/util/g;

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jeppesen/android/util/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/jeppesen/android/util/g;->b(Ljava/util/Set;)Z

    const-string v2, "downloadIds"

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Downloads are in progress"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/e;->c(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/preferences/ChartCycleTextViewPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    const v2, 0x7f070025

    invoke-virtual {p0, v2}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-boolean v5, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->b:Z

    new-instance v0, Lcom/jeppesen/android/tc/activity/n;

    invoke-direct {v0, p0, v6}, Lcom/jeppesen/android/tc/activity/n;-><init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;Lcom/jeppesen/android/tc/activity/i;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$UpdatesFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
