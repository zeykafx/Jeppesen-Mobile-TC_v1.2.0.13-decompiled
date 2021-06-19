.class Lcom/jeppesen/android/tc/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput-object p1, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s:Landroid/location/Location;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->s:Landroid/location/Location;

    invoke-static {v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->L:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->i(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/ae;->cancel(Z)Z

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    new-instance v0, Lcom/jeppesen/android/tc/activity/ae;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/x;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {v0, v2, p1}, Lcom/jeppesen/android/tc/activity/ae;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/location/Location;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/jeppesen/android/tc/activity/ae;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/activity/ae;

    iput-object v0, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->t:Lcom/jeppesen/android/tc/activity/ae;

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/x;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/activity/x;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
