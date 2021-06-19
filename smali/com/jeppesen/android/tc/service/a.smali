.class final Lcom/jeppesen/android/tc/service/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/service/ManualsService;


# direct methods
.method public constructor <init>(Lcom/jeppesen/android/tc/service/ManualsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.jeppesen.android.tc.service.ManualsService_FileName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.jeppesen.android.tc.service.ManualsService_DownloadId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v2, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v2, "com.jeppesen.android.tc.service.ManualsService_FileSize"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ManualsService processing "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v9

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->h()J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-eqz v0, :cond_0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->k()J

    move-result-wide v10

    cmp-long v0, v10, v7

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_3

    :try_start_2
    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetedDocRecord wasn\'t found in storedManualsInfo?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/ManualsService;->stopSelf(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/ManualsService;->stopSelf(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".ZIP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v3, v2, v0}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error unpacking file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/ManualsService;->stopSelf(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-static {v3}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;)Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had a problem getting the embedded file name and file zize from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/ManualsService;->stopSelf(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->b()J

    move-result-wide v10

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/a/b;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Lcom/jeppesen/android/tc/a/b;->b(J)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/jeppesen/android/util/j;->a(Lcom/jeppesen/android/tc/a/b;Z)V

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/service/ManualsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v5, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->remove([J)I

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/a/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/jeppesen/android/tc/service/ManualsService;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing record "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0

    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_9
    invoke-static {v9}, Lcom/jeppesen/android/util/j;->a(Ljava/util/List;)V

    new-instance v0, Lcom/jeppesen/android/util/l;

    invoke-direct {v0}, Lcom/jeppesen/android/util/l;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    invoke-virtual {v3}, Lcom/jeppesen/android/tc/service/ManualsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/util/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/jeppesen/android/tc/service/a;->a:Lcom/jeppesen/android/tc/service/ManualsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/service/ManualsService;->stopSelf(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v0, Lcom/jeppesen/android/tc/service/ManualsService;->a:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
