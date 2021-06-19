.class public Lcom/jeppesen/android/tc/service/UpdateService;
.super Landroid/app/IntentService;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = -0xa

.field public static final p:I = -0xc

.field public static final q:I = -0x12

.field public static final r:I = -0x13

.field public static final s:I = -0x14

.field public static final t:I = -0x32

.field private static final w:Ljava/lang/String;


# instance fields
.field private A:Lcom/jeppesen/android/b/b;

.field private B:Lcom/jeppesen/jeppview/jtca/b;

.field private final C:Landroid/os/IBinder;

.field u:J

.field v:J

.field private x:I

.field private y:Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/service/UpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "UpdateServiceWorkerThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    iput-object v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->z:[Ljava/lang/String;

    new-instance v0, Lcom/jeppesen/android/tc/service/c;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/service/c;-><init>(Lcom/jeppesen/android/tc/service/UpdateService;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->C:Landroid/os/IBinder;

    iput-wide v2, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    iput-wide v2, p0, Lcom/jeppesen/android/tc/service/UpdateService;->v:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/jeppesen/android/c/a;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    :goto_0
    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    return v0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->y:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jeppesen/android/c/a;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/c/a;->h()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->v:J

    iget-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->v:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    double-to-int v0, v1

    goto :goto_0
.end method

.method public d()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jeppesen/android/c/a;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    :cond_0
    iget-wide v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->u:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    long-to-int v0, v1

    :cond_1
    return v0
.end method

.method e()Landroid/app/Notification$Builder;
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

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/service/UpdateService;->C:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->C:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/16 v9, -0x32

    sget-object v1, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v2, "onHandleIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->y:Ljava/lang/String;

    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v1, "com.jeppesen.android.tc.service.UpdateService_NeedToResume"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v4, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to resume? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/jeppesen/android/c/a;->j()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/jeppesen/android/c/a;->l()Z

    move-result v0

    move v4, v1

    move v1, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateService.this is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/service/UpdateService;->e()Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "Resuming unpacking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/jeppesen/android/c/a;->f()I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "Error merging the downloadfile."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in applyUpdateChartsBin."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x32

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    :try_start_4
    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    throw v0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    invoke-static {}, Lcom/jeppesen/android/c/a;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->z:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->z:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->z:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/16 v0, -0xa

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    :try_start_5
    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->z:[Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/android/c/a;->a([Ljava/lang/String;)Lcom/jeppesen/android/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/b/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, -0xa

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in testConnectToHost."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_8

    const/4 v0, 0x7

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :try_start_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v1}, Lcom/jeppesen/android/b/b;->b()I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/jeppesen/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in resumeTermChartDownload."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :cond_6
    iput v11, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :try_start_7
    invoke-static {}, Lcom/jeppesen/android/c/a;->f()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "Error merging the download file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in applyUpdateChartsBin."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0xa

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x5

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    :try_start_8
    invoke-static {}, Lcom/jeppesen/android/c/a;->b()I

    move-result v1

    invoke-static {}, Lcom/jeppesen/android/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/jeppesen/android/c/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const v1, 0x32dcd5

    const-string v0, " "

    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v4

    invoke-static {}, Lcom/jeppesen/android/a/a;->f()Z

    invoke-virtual {v4}, Lcom/jeppesen/android/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    iget-object v4, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v4}, Lcom/jeppesen/android/b/b;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jeppesen/android/tc/service/UpdateService;->A:Lcom/jeppesen/android/b/b;

    invoke-virtual {v5}, Lcom/jeppesen/android/b/b;->b()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/jeppesen/android/c/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_c

    sparse-switch v1, :sswitch_data_0

    const/16 v0, -0x12

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in getJeppViewServerInfo or getCoverageCodes."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :sswitch_0
    :try_start_9
    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "Error creating a C socket."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x12

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :sswitch_1
    sget-object v1, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Poor Internet connection.  Please try again."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, -0x13

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :cond_b
    const/16 v1, -0x14

    iput v1, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->y:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/jeppesen/jeppview/jtca/b;->values()[Lcom/jeppesen/jeppview/jtca/b;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->B:Lcom/jeppesen/jeppview/jtca/b;
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->B:Lcom/jeppesen/jeppview/jtca/b;

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->d:Lcom/jeppesen/jeppview/jtca/b;

    if-ne v0, v1, :cond_d

    const/16 v0, 0xc

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x6

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f070039

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/jeppesen/android/c/a;->e()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in getTermChartDownload."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x9

    :try_start_b
    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-static {}, Lcom/jeppesen/android/c/a;->f()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "Error merging the download file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    :try_start_d
    const-string v0, "JNI Error"

    const-string v1, "OutOfMemoryError in JNI code in applyUpdateChartsBin."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x32

    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0xa

    :try_start_e
    iput v0, p0, Lcom/jeppesen/android/tc/service/UpdateService;->x:I

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/tc/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    const-string v1, "finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    throw v0

    :cond_10
    move v4, v1

    move v1, v0

    goto/16 :goto_0

    :cond_11
    move v1, v0

    move v4, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x14 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRebind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/IntentService;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/jeppesen/android/tc/service/UpdateService;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/IntentService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
