.class public Lcom/jeppesen/android/tc/service/TailoredCoveragesService;
.super Landroid/app/Service;


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Looper;

.field private b:Lcom/jeppesen/android/tc/service/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->d()V

    return-void
.end method

.method private static d()V
    .locals 6

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charts.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vfrcharts.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chartsbin"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfrchartsbin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    invoke-static {v3}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elrey!"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/app/Notification$Builder;
    .locals 5

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object v0
.end method

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

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->a:Landroid/os/Looper;

    new-instance v0, Lcom/jeppesen/android/tc/service/b;

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->a:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/jeppesen/android/tc/service/b;-><init>(Lcom/jeppesen/android/tc/service/TailoredCoveragesService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b:Lcom/jeppesen/android/tc/service/b;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "com.jeppesen.android.tc.service.TailoredCoveragesService_Bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b:Lcom/jeppesen/android/tc/service/b;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/b;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b:Lcom/jeppesen/android/tc/service/b;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/b;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method
