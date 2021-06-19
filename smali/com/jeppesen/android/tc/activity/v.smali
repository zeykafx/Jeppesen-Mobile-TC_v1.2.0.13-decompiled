.class Lcom/jeppesen/android/tc/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/v;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/v;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->c(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/v;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    new-instance v0, Lcom/jeppesen/android/tc/activity/aa;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/v;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/aa;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
