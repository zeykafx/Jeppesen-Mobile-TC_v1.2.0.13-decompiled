.class Lcom/jeppesen/android/tc/activity/an;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/LegalActivity;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/LegalActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/LegalActivity;Lcom/jeppesen/android/tc/activity/am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/an;-><init>(Lcom/jeppesen/android/tc/activity/LegalActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->b(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v3, 0x7f070069

    invoke-virtual {v1, v3}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->c(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v3, 0x7f070068

    invoke-virtual {v1, v3}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to connect to network to get Data EULA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
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
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v4}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Malformed URL for data EULA text in Legal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->b(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->c(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    invoke-static {}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "No data EULA found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->b(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->c(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_7
    :try_start_9
    invoke-static {}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "retrieved data EULA"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_8
    :goto_5
    if-eqz v1, :cond_1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    :try_start_c
    invoke-static {}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error trying to get URL connection for data EULA text in Legal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->b(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->c(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Lcom/jeppesen/android/tc/activity/LegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v3, :cond_9

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_9
    :goto_7
    if-eqz v1, :cond_1

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_a
    :goto_9
    if-eqz v1, :cond_b

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_b
    :goto_a
    throw v0

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v2

    goto :goto_9

    :catch_b
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/tc/activity/LegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/LegalActivity;->a(Lcom/jeppesen/android/tc/activity/LegalActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/LegalActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/an;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/an;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/an;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    const-string v1, "Loading data"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
