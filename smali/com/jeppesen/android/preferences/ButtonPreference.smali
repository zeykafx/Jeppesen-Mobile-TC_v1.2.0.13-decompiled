.class public Lcom/jeppesen/android/preferences/ButtonPreference;
.super Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/preferences/ButtonPreference;->setPersistent(Z)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/preferences/ButtonPreference;->setLayoutResource(I)V

    const-string v0, "UpdateButton"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/preferences/ButtonPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
