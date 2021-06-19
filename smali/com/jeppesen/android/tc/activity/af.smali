.class Lcom/jeppesen/android/tc/activity/af;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/af;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/jeppesen/jeppview/jtca/data/Chart;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h()Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/jeppesen/jeppview/jtca/data/Chart;)V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0, p1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {p1}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Airport;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->b(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->f(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/af;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/jeppview/jtca/data/Chart;Z)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/af;->a([Ljava/lang/Void;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/af;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;)V

    return-void
.end method
