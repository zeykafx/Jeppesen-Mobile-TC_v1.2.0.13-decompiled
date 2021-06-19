.class Lcom/jeppesen/android/tc/activity/bp;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method public constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/bp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://jsum.jeppesen.com/jsum/license/License_data.html"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Malformed URL for data EULA"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/bp;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No data EULA found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/bp;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_5
    :try_start_9
    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "retrieved data EULA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    :goto_6
    :try_start_c
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;J)J

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->c(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->d(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->f(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->e(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    :try_start_d
    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Error trying to get URL connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/bp;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_8
    :goto_8
    if-eqz v1, :cond_1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_9
    if-eqz v3, :cond_9

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_9
    :goto_a
    if-eqz v1, :cond_a

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    :cond_a
    :goto_b
    throw v0

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get bytes from EULA text"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/activity/bp;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_6

    :catch_8
    move-exception v2

    goto/16 :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v2

    goto :goto_8

    :catch_b
    move-exception v2

    goto :goto_a

    :catch_c
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_e
    move-exception v0

    goto :goto_7

    :catch_f
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_10
    move-exception v0

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v3, v4}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;J)J

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bp;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->d(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->f(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->g(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->f(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v4}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->h(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bp;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->i(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bp;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/bp;->a(Ljava/lang/Boolean;)V

    return-void
.end method
