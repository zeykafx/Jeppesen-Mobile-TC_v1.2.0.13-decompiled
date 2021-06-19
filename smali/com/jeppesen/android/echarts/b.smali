.class public Lcom/jeppesen/android/echarts/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/jeppesen/android/echarts/EChartsInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    iput p1, p0, Lcom/jeppesen/android/echarts/b;->a:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/echarts/b;->a(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/echarts/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    return v0
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/echarts/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jeppesen/android/echarts/b;->b()V

    const-string v0, "ChartWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening Chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/jeppesen/android/echarts/EChartsJNI;->tclOpen(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object p1, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/jeppesen/android/echarts/EChartsInfo;

    invoke-direct {v0}, Lcom/jeppesen/android/echarts/EChartsInfo;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iget-object v1, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    invoke-static {v0, v1}, Lcom/jeppesen/android/echarts/EChartsJNI;->tclGetChartInfo(ILcom/jeppesen/android/echarts/EChartsInfo;)V

    const-string v0, "ChartWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened Chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jeppesen/android/echarts/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    const-string v0, "ChartWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    if-lez v0, :cond_0

    const-string v0, "ChartWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing Chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jeppesen/android/echarts/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    invoke-static {v0}, Lcom/jeppesen/android/echarts/EChartsJNI;->tclClose(I)V

    const-string v0, "ChartWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed Chart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jeppesen/android/echarts/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    iput-object v3, p0, Lcom/jeppesen/android/echarts/b;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    return-void
.end method

.method public final c()Lcom/jeppesen/android/echarts/EChartsInfo;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jeppesen/android/echarts/EChartsInfo;

    invoke-direct {v0}, Lcom/jeppesen/android/echarts/EChartsInfo;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/echarts/b;->c:Lcom/jeppesen/android/echarts/EChartsInfo;

    return-object v0
.end method

.method public finalize()V
    .locals 4

    iget v0, p0, Lcom/jeppesen/android/echarts/b;->a:I

    if-lez v0, :cond_0

    const-string v0, "ChartWrapperFinalize"

    const-string v1, "tclClose from finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/jeppesen/android/echarts/b;->b()V
    :try_end_0
    .catch Lcom/jeppesen/android/echarts/EChartsError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ChartWrapperFinalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tclClose Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/EChartsError;->getWrapperID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/EChartsError;->getError()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ChartWrapperFinalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tclClose Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
