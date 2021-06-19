.class public Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;
.super Landroid/preference/PreferenceFragment;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Z

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Z)Landroid/preference/PreferenceScreen;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070013

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    sget-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a(Landroid/preference/PreferenceCategory;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->l()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Standard_Airway_Manual"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a(Landroid/preference/PreferenceCategory;)V

    :cond_4
    if-eqz p1, :cond_5

    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070012

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a(Landroid/preference/PreferenceCategory;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Jeppesen Airway Manual, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/jeppesen/android/util/e;->e(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->j()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/j;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/j;-><init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;)V

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/jeppesen/android/util/e;->e(D)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->j()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/k;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/k;-><init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;)V

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private a(Landroid/preference/PreferenceCategory;)V
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->b:Landroid/content/SharedPreferences;

    const-string v1, "company_content"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a:Z

    iget-boolean v0, p0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a:Z

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->a(Z)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
