.class Lcom/jeppesen/android/tc/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/d;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/d;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->b(Lcom/jeppesen/android/tc/activity/ActivationActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "company_content"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/d;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->a(Lcom/jeppesen/android/tc/activity/ActivationActivity;Z)V

    return-void
.end method
