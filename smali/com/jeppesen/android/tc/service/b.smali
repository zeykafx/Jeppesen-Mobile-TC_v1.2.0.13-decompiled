.class final Lcom/jeppesen/android/tc/service/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;


# direct methods
.method public constructor <init>(Lcom/jeppesen/android/tc/service/TailoredCoveragesService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.jeppesen.android.tc.service.TailoredCoveragesService_FileName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.jeppesen.android.tc.service.TailoredCoveragesService_DownloadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "com.jeppesen.android.tc.service.TailoredCoveragesService_FileSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TailoredCoveragesService processing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jeppesen/android/util/o;->a()Ljava/util/List;

    move-result-object v10

    const/4 v3, 0x0

    move v1, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->h()J

    move-result-wide v11

    cmp-long v0, v11, v6

    if-eqz v0, :cond_0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/c;->l()J

    move-result-wide v11

    cmp-long v0, v11, v8

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :cond_1
    if-nez v3, :cond_3

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetedDocRecord wasn\'t found in storedCoveragesInfo?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->stopSelf(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManualsService NPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->stopSelf(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ZIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TailoredCoveragesService.this is "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->a()Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    :try_start_1
    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/a/a;->f()Z

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    const v11, 0x7f07003d

    invoke-virtual {v1, v11}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v4}, Lcom/jeppesen/android/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unpacking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->stopSelf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lcom/jeppesen/android/tc/a/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v2, v1

    :cond_5
    invoke-static {v2}, Lcom/jeppesen/android/c/a;->b(I)V

    invoke-static {}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->c()V

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v4, 0x0

    aput-wide v6, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    :goto_2
    const-string v1, "loadedTailoredCoverageId"

    invoke-virtual {v3}, Lcom/jeppesen/android/tc/a/c;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    invoke-virtual {v3}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/service/b;->a:Lcom/jeppesen/android/tc/service/TailoredCoveragesService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/TailoredCoveragesService;->stopSelf(I)V

    goto/16 :goto_1

    :cond_7
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    throw v1
.end method
