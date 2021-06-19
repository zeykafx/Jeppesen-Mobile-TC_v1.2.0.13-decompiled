.class Lcom/jeppesen/android/tc/activity/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->f(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->e(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->g(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->h(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;J)J

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ba;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->s(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V

    return-void
.end method
