.class public Lcom/jeppesen/android/views/imagezoom/e;
.super Lcom/jeppesen/android/views/imagezoom/d;


# instance fields
.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/d;-><init>()V

    return-void
.end method

.method private d()F
    .locals 3

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/e;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/e;->g:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/e;->h:F

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/e;->b:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/e;->f:F

    neg-float v0, v0

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/e;->b:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 5

    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/e;->d()F

    move-result v1

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/e;->a:F

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/e;->b:F

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v1

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/e;->a:F

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/e;->b:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/e;->b:F

    return-void
.end method

.method public b(FF)V
    .locals 3

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/e;->g:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/e;->h:F

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/e;->f:F

    return-void
.end method
