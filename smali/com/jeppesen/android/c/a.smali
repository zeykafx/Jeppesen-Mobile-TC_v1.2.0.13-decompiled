.class public Lcom/jeppesen/android/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jeppesen/android/c/a;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lcom/jeppesen/android/b/b;
    .locals 7

    const/16 v3, 0x7c0

    const/4 v2, 0x0

    new-instance v0, Lcom/jeppesen/android/b/b;

    invoke-direct {v0}, Lcom/jeppesen/android/b/b;-><init>()V

    sget-boolean v1, Lcom/jeppesen/android/c/a;->e:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Using test update server november.jepptech.com port 1984"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "november.jepptech.com"

    invoke-static {v1, v3}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->testConnectToHost(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "november.jepptech.com"

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/jeppesen/android/b/b;->a(I)V

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Connected to server: november.jepptech.com  port: 1984"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to connect to november.jepptech.com port 1984!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    array-length v3, p0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, p0, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->testConnectToHost(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v5}, Lcom/jeppesen/android/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/jeppesen/android/b/b;->a(I)V

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to connect to any update server!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->getJeppViewServerInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->resumeTermChartDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/c/a;->n()V

    :cond_1
    return-object v0
.end method

.method public static a(J)V
    .locals 3

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadzip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v1}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "elrey!"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

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

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/jeppesen/android/c/a;->e:Z

    return-void
.end method

.method public static a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/jeppesen/android/util/e;->b()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v2, p0, 0xe

    add-int/lit8 v2, v2, 0x46

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://www.jepptech.com/Scripts/Redirect.asp?list=1"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    sget-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v4, "No update server list found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_1
    move-object v0, v1

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    :try_start_5
    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v4, "Response contained HTML"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_6
    :goto_4
    move-object v0, v1

    goto :goto_2

    :cond_7
    :try_start_8
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_9
    array-length v4, v0

    if-nez v4, :cond_b

    :cond_8
    sget-object v4, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v5, "Error parsing server list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_a
    :goto_6
    move-object v0, v1

    goto :goto_2

    :cond_b
    :try_start_c
    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v4, "retrieved update server list"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_c
    :goto_7
    if-eqz v2, :cond_3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_8
    :try_start_f
    sget-object v4, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v5, "Malformed URL for jepptech"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v3, :cond_d

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_d
    :goto_9
    if-eqz v2, :cond_3

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_a
    :try_start_12
    sget-object v4, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v5, "Error trying to get URL connection"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v3, :cond_e

    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :cond_e
    :goto_b
    if-eqz v2, :cond_3

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_c
    if-eqz v3, :cond_f

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_f
    :goto_d
    if-eqz v2, :cond_10

    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    :cond_10
    :goto_e
    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v1

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_9

    :catch_d
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_d

    :catch_f
    move-exception v1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_10
    move-exception v0

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a

    :catch_11
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_a

    :catch_12
    move-exception v1

    goto :goto_a

    :catch_13
    move-exception v0

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_14
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_8

    :catch_15
    move-exception v1

    goto :goto_8
.end method

.method public static b()I
    .locals 4

    const/4 v0, -0x1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charts.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "Database_Begin_Date"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, -0x3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to load charts.ini file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to load charts.ini file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/jeppesen/android/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v1, "unable to confirm download"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "jeppesen.tfl"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "jeppesen.tfs"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "lssdef.tcl"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "airports.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "charts.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "chrtlink.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "ctypes.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "crcfiles.txt"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "notams.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "notams.dbt"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "charts.ini"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "charts.bin"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "state.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "vfrapts.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "vfrchrts.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "vfrchrts.bin"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "vfrntms.dbf"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v1, "vfrntms.dbt"

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "notams.dbt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "jeppesen.tfl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "jeppesen.tls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lssdef.tcl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "airports.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "charts.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chrtlink.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ctypes.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "crcfiles.txt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "notams.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "charts.ini"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "state.dbf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "charts.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unpacking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/jeppesen/android/c/a;->m()V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static b(I)V
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/c/a;->b()I

    move-result v0

    invoke-static {}, Lcom/jeppesen/android/c/a;->c()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x7

    add-int/2addr v0, v1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charts.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[CHARTS]\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database_Begin_Date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".5\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database_End_Date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".5\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Data_Spec_Version=2.2\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixChartsIni encountered a problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c()I
    .locals 4

    const/4 v0, -0x1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charts.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "Database_End_Date"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, -0x3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to load charts.ini file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Unable to load charts.ini file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "charts.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vfrcharts.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chartsbin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vfrchartsbin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elrey!"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->getCoverageCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadzip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elrey!"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->getTermChartDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/jeppesen/android/c/a;->n()V

    :cond_1
    return-object v0
.end method

.method public static f()I
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/jeppesen/android/c/a;->o()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v1, "unable to confirm download"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    const-string v2, "TerminalCharts/"

    sget-object v3, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unpacking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "airports.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "charts.bin"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "charts.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "notams.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "notams.dbt"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrapts.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrcharts.bin"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrchrts.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrntms.dbf"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrntms.dbt"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "deletecharts.bin"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    sget-object v2, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v3, "charts.bin"

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v2, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v3, "vfrcharts.bin"

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v2, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v3, "deletecharts.bin"

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move v6, v0

    :goto_1
    sget-object v0, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "deltacharts000.bin"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_5

    const-string v0, ""

    :goto_2
    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "deltacharts000.bin"

    const-string v3, "deltatable.bin"

    const-string v4, "charts.bin"

    const-string v5, "charts.dbf"

    invoke-static/range {v0 .. v5}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->applyUpdateChartsBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Error merging IFR deltas"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrdeltacharts000.bin"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_8

    const-string v0, ""

    :goto_4
    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrdeltacharts000.bin"

    const-string v3, "vfrdeltatable.bin"

    const-string v4, "vfrcharts.bin"

    const-string v5, "vfrchrts.dbf"

    invoke-static/range {v0 .. v5}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->applyUpdateChartsBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_7
    if-eqz v0, :cond_9

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    const-string v2, "Error merging VFR deltas"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "delta*"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->d(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    const-string v2, "vfrdelta*"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->d(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v2, "download.zip"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v0, :cond_0

    sget-object v1, Lcom/jeppesen/android/c/a;->d:Ljava/lang/String;

    sget-object v2, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/jeppesen/android/c/a;->m()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v6, v1

    goto :goto_1
.end method

.method public static g()J
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v3, "*.siz"

    invoke-static {v2, v3}, Lcom/jeppesen/android/util/p;->f(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".siz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public static h()J
    .locals 4

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public static i()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v2, "*.siz"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->f(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v2, "*.id"

    invoke-static {v1, v2}, Lcom/jeppesen/android/util/p;->f(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static j()Z
    .locals 11

    const/4 v10, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v0, v1

    :goto_0
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "*.id"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "*.siz"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v2, v1

    :cond_2
    :goto_1
    return v2

    :cond_3
    if-ne v0, v1, :cond_4

    if-nez v5, :cond_2

    :cond_4
    sget-object v0, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v3, "charts.ini"

    invoke-static {v0, v3}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_2
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "chrtlink.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "country.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "coverags.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "crcfiles.txt"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "ctypes.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "jvcoverage.dat"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "regions.dat"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "sbscrips.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "state.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "airports.dbf"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    :goto_3
    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v8, "charts.bin"

    invoke-static {v4, v8}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v8, "charts.dbf"

    invoke-static {v4, v8}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v8, "notams.dbf"

    invoke-static {v4, v8}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_10
    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v8, "notams.dbt"

    invoke-static {v4, v8}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    :cond_11
    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v8, "vfrapts.dbf"

    invoke-static {v4, v8}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v1

    :goto_4
    sget-object v8, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v9, "vfrcharts.bin"

    invoke-static {v8, v9}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    add-int/lit8 v4, v4, 0x1

    :cond_12
    sget-object v8, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v9, "vfrchrts.dbf"

    invoke-static {v8, v9}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    add-int/lit8 v4, v4, 0x1

    :cond_13
    sget-object v8, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v9, "vfrntms.dbf"

    invoke-static {v8, v9}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    add-int/lit8 v4, v4, 0x1

    :cond_14
    sget-object v8, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v9, "vfrntms.dbt"

    invoke-static {v8, v9}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    add-int/lit8 v4, v4, 0x1

    :cond_15
    const/16 v8, 0xa

    if-eq v0, v8, :cond_1c

    move v0, v1

    :goto_5
    if-lez v3, :cond_16

    if-eq v3, v10, :cond_16

    move v0, v1

    :cond_16
    if-lez v4, :cond_17

    if-eq v4, v10, :cond_17

    move v0, v1

    :cond_17
    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    const-string v4, "table.bin"

    invoke-static {v3, v4}, Lcom/jeppesen/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v1

    :cond_18
    if-eqz v5, :cond_19

    move v0, v1

    :cond_19
    if-eqz v6, :cond_1a

    move v0, v1

    :cond_1a
    if-eqz v7, :cond_1b

    :goto_6
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v0

    invoke-static {}, Lcom/jeppesen/android/c/a;->k()Z

    invoke-virtual {v0}, Lcom/jeppesen/android/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_1b
    move v1, v0

    goto :goto_6

    :cond_1c
    move v0, v2

    goto :goto_5

    :cond_1d
    move v4, v2

    goto :goto_4

    :cond_1e
    move v3, v2

    goto/16 :goto_3

    :cond_1f
    move v0, v2

    goto/16 :goto_2

    :cond_20
    move v0, v2

    goto/16 :goto_0
.end method

.method public static k()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/p;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-object v0, Lcom/jeppesen/android/c/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/jeppesen/android/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static m()V
    .locals 6

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

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

    sget-object v4, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

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

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static n()V
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "download.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadzip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elrey!"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

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

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static o()Z
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/c/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "download.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadzip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elrey!"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/jeppesen/android/util/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
