.class public Lcom/jeppesen/android/echarts/EChartsError;
.super Ljava/lang/Exception;


# static fields
.field public static final TCLOK:I = 0x1

.field private static final a:J = -0x1092427d03c287dfL


# instance fields
.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    iput p1, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    iput p1, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    return v0
.end method

.method public final getError()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    neg-int v0, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_0
.end method

.method public final getWrapperID()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/echarts/EChartsError;->b:I

    neg-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public final isError()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/jeppesen/android/echarts/EChartsError;->getError()I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
