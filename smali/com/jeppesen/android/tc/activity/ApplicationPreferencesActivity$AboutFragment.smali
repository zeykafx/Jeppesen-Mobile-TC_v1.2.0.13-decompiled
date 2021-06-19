.class public Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$AboutFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/ApplicationPreferencesActivity$AboutFragment;->addPreferencesFromResource(I)V

    return-void
.end method
