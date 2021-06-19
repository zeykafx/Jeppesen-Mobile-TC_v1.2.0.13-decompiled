.class public Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return v3

    :cond_0
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "company_content"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/jeppesen/android/tc/activity/l;

    invoke-direct {v1, p0, v0}, Lcom/jeppesen/android/tc/activity/l;-><init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
