.class Lcom/jeppesen/android/tc/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/j;->a:Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$ManualsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->j()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/a/b;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return v2
.end method
