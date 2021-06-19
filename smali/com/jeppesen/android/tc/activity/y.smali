.class Lcom/jeppesen/android/tc/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Z)Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quick_tips_preference"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/y;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->k(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
