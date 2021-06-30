.class public Lcom/jeppesen/android/echarts/TCLNatives;
.super Ljava/lang/Object;


# static fields
.field public static final NATIVE_RENDER:Z = true

.field private static final a:Ljava/lang/String;

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "/tcl/tcl/jeppesen.tfl"

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/util/List;

.field public static pathToTcl:Ljava/lang/String;

.field public static rootStoragePath:Ljava/lang/String;

.field public static tclSize:Lcom/jeppesen/android/echarts/EChartsSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/jeppesen/android/echarts/TCLNatives;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    sput-boolean v2, Lcom/jeppesen/android/echarts/TCLNatives;->b:Z

    const-string v0, "/tcl/demo_charts/sbgl101r.tcl"

    sput-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->d:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->f:Ljava/lang/String;

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->g:Ljava/lang/String;

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->h:Ljava/lang/String;

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->i:Ljava/lang/String;

    sput-boolean v2, Lcom/jeppesen/android/echarts/TCLNatives;->j:Z

    sput-boolean v2, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    new-instance v0, Lcom/jeppesen/android/echarts/EChartsSize;

    invoke-direct {v0}, Lcom/jeppesen/android/echarts/EChartsSize;-><init>()V

    sput-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    sput-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->pathToTcl:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AP"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->l:Ljava/util/List;

    const-string v0, "jitecharts"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jitecharts library loaded\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init()V
    .locals 3

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v1, "initializing TCL library.  this must be done after gl context is available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclLibInit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v2, "Error initializing ECharts Library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static currentChartIsAnOwnshipChartType()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->j:Z

    return v0
.end method

.method public static getChartType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getIcao()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getIndexNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcedureId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getTclLatLonToXY(DD)Lcom/jeppesen/jeppview/jtca/data/IntPoint;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v1, p0, p1, p2, p3}, Lcom/jeppesen/android/echarts/TCLNatives;->tclLatLonToXY(IDD)Lcom/jeppesen/jeppview/jtca/data/IntPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v3, "Oh No!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v3, "Oh No!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initAssets()Z
    .locals 3

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v1, "initAssets() TCLNatives class has not been initialized properly"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcl/tcl/jeppesen.tfl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/demo_charts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/io/File;)Z

    const-string v0, "tcl/demo_charts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/demo_charts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/fonts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/io/File;)Z

    const-string v0, "tcl/fonts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/fonts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/tcl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeppesen/android/util/n;->a(Ljava/io/File;)Z

    const-string v0, "tcl/tcl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcl/tcl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isTclGeoRefd()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z

    return v0
.end method

.method public static renderChart()V
    .locals 10

    const/4 v7, 0x1

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in renderChart doing native render for chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->pathToTcl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    if-ltz v0, :cond_1

    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclClose(I)V

    const/4 v0, -0x1

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    :cond_1
    const-wide/16 v0, 0x0

    sget-boolean v2, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move-wide v1, v0

    :goto_0
    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->pathToTcl:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/jeppesen/android/echarts/TCLNatives;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/jeppesen/android/echarts/TCLNatives;->tclOpen(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    :goto_1
    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    const-string v8, "chart"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    invoke-static {v7, v3}, Lcom/jeppesen/android/echarts/TCLNatives;->tclGetSizeAdjusted(ILcom/jeppesen/android/echarts/EChartsSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclRender(I)V
    :try_end_1
    .catch Lcom/jeppesen/android/echarts/EChartsError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time for tclRender is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    long-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclIsGeoRefd(I)Z

    move-result v0

    sput-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z

    if-nez v0, :cond_3

    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    if-ltz v0, :cond_3

    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclClose(I)V

    const/4 v0, -0x1

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->pathToTcl:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/jeppesen/android/echarts/TCLNatives;->tclOpen(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v2, "Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z

    if-nez v0, :cond_3

    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    if-ltz v0, :cond_3

    sget v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/TCLNatives;->tclClose(I)V

    const/4 v0, -0x1

    sput v0, Lcom/jeppesen/android/echarts/TCLNatives;->e:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v2, "Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    sget-boolean v3, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v3, :cond_5

    :cond_5
    sget-object v3, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v4, "Oh No!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    sget-boolean v1, Lcom/jeppesen/android/echarts/TCLNatives;->k:Z

    if-nez v1, :cond_6

    sget v1, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    if-ltz v1, :cond_6

    sget v1, Lcom/jeppesen/android/echarts/TCLNatives;->e:I

    invoke-static {v1}, Lcom/jeppesen/android/echarts/TCLNatives;->tclClose(I)V

    const/4 v1, -0x1

    sput v1, Lcom/jeppesen/android/echarts/TCLNatives;->e:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v2, "Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_4
    move-exception v1

    sget-object v2, Lcom/jeppesen/android/echarts/TCLNatives;->a:Ljava/lang/String;

    const-string v3, "Oh No!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    move-wide v1, v0

    goto/16 :goto_0
.end method

.method public static setChartType(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->i:Ljava/lang/String;

    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/jeppesen/android/echarts/TCLNatives;->j:Z

    return-void
.end method

.method public static setFileName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->d:Ljava/lang/String;

    return-void
.end method

.method public static setIcao(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->f:Ljava/lang/String;

    return-void
.end method

.method public static setIndexNumber(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->g:Ljava/lang/String;

    return-void
.end method

.method public static setPathToTcl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->pathToTcl:Ljava/lang/String;

    return-void
.end method

.method public static setProcedureId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->h:Ljava/lang/String;

    return-void
.end method

.method public static setRootStoragePath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/echarts/TCLNatives;->rootStoragePath:Ljava/lang/String;

    return-void
.end method

.method public static native tclClose(I)V
.end method

.method public static native tclGetChartInfo(ILcom/jeppesen/android/echarts/EChartsInfo;)V
.end method

.method public static native tclGetSizeAdjusted(ILcom/jeppesen/android/echarts/EChartsSize;)V
.end method

.method public static native tclGetVersion([I)V
.end method

.method public static native tclIsGeoRefd(I)Z
.end method

.method public static native tclLatLonToXY(IDD)Lcom/jeppesen/jeppview/jtca/data/IntPoint;
.end method

.method public static native tclLibClose()V
.end method

.method public static native tclLibInit(Ljava/lang/String;)V
.end method

.method public static native tclOpen(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native tclRender(I)V
.end method

.method public static native tclSetBufferSize(II)V
.end method
