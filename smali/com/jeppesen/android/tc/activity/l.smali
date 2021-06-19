.class Lcom/jeppesen/android/tc/activity/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Landroid/preference/CheckBoxPreference;

.field final synthetic b:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/l;->b:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/l;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/l;->a:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->notifyDependencyChange(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/l;->b:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;

    const-string v1, "custom_user_pass"

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;->a(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$PreferencesFragment;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a()V

    const/4 v0, 0x1

    return v0
.end method
