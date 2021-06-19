.class Lcom/jeppesen/android/tc/activity/bl;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Lcom/jeppesen/android/tc/activity/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/bl;-><init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/jeppesen/android/tc/a/c;)Lcom/jeppesen/android/tc/a/c;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "fileId"

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/a/c;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fileIdHash"

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/a/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timeout"

    const-string v3, "3600"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/jeppesen/android/tc/a/a;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jeppesen/android/tc/a/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/jeppesen/android/tc/a/c;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v4}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->w(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-direct {v3, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/jeppesen/android/tc/a/c;->a(J)V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bl;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v5}, Lcom/jeppesen/android/util/o;->a(Lcom/jeppesen/android/tc/a/c;Z)V

    invoke-virtual {p1}, Lcom/jeppesen/android/tc/a/c;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jeppesen/android/c/a;->a(J)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bl;->a([Lcom/jeppesen/android/tc/a/c;)Lcom/jeppesen/android/tc/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jeppesen/android/tc/a/c;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bl;->a(Lcom/jeppesen/android/tc/a/c;)V

    return-void
.end method
