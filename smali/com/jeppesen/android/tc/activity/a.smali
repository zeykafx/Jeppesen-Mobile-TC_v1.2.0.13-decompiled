.class Lcom/jeppesen/android/tc/activity/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/a;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/jeppview/jtca/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoChartsTread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
