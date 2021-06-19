.class public Lcom/jeppesen/android/echarts/EChartsInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field public boundBottom:I

.field public boundLeft:I

.field public boundRight:I

.field public boundTop:I

.field public geoRef:Z

.field public planBottom:I

.field public planLeft:I

.field public planRight:I

.field public planTop:I

.field public profileBottom:I

.field public profileLeft:I

.field public profileRight:I

.field public profileTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->geoRef:Z

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundLeft:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundTop:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundRight:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundBottom:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->planLeft:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->planTop:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->planRight:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->planBottom:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->profileLeft:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->profileTop:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->profileRight:I

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->profileBottom:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->a:F

    return-void
.end method


# virtual methods
.method public getBoundHeight()I
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundBottom:I

    iget v1, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBoundWidth()I
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundRight:I

    iget v1, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOptimalScale()F
    .locals 5

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundRight:I

    iget v1, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundBottom:I

    iget v2, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundTop:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundRight:I

    iget v2, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->boundBottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-wide v1, 0x40c3880000000000L    # 10000.0

    add-int/lit8 v0, v0, 0x1

    int-to-double v3, v0

    div-double v0, v1, v3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->a:F

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsInfo;->a:F

    return v0
.end method
