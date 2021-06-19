.class public Lcom/jeppesen/android/tc/service/ManualsService;
.super Landroid/app/Service;


# static fields
.field static final a:Ljava/util/List;

.field private static final d:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Looper;

.field private c:Lcom/jeppesen/android/tc/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/service/ManualsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/ManualsService;->b:Landroid/os/Looper;

    new-instance v0, Lcom/jeppesen/android/tc/service/a;

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/ManualsService;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/service/a;-><init>(Lcom/jeppesen/android/tc/service/ManualsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/ManualsService;->c:Lcom/jeppesen/android/tc/service/a;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "com.jeppesen.android.tc.service.ManualsService_Bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/ManualsService;->c:Lcom/jeppesen/android/tc/service/a;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/ManualsService;->c:Lcom/jeppesen/android/tc/service/a;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/a;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method
