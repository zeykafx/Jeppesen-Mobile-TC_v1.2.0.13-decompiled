.class Lcom/jeppesen/android/tc/activity/ae;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/location/Location;

.field final synthetic b:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method public constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ae;->b:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ae;->a:Landroid/location/Location;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/ae;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/ae;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->g()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->g()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ae;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ae;->b:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Landroid/location/LocationListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ae;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ae;->a(Ljava/lang/Void;)V

    return-void
.end method
