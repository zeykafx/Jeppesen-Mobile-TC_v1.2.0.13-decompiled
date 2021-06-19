.class Lcom/jeppesen/android/tc/activity/ab;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ab;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ab;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ab;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "help-v2.html"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Malformed URL for help file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_3
    return-object v2

    :cond_2
    :try_start_6
    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/ab;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    :try_start_9
    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error trying to get URL connection for help file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_6
    :goto_9
    throw v0

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v2

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catch_d
    move-exception v0

    move-object v3, v2

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ab;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
