.class public abstract Lcom/jeppesen/android/views/imagezoom/d;
.super Ljava/lang/Object;


# static fields
.field private static final f:I = 0x3c


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->c:F

    const v0, -0x800001

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->d:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->e:J

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/d;->c:F

    return-void
.end method

.method public a(FFJ)V
    .locals 0

    iput p2, p0, Lcom/jeppesen/android/views/imagezoom/d;->b:F

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    iput-wide p3, p0, Lcom/jeppesen/android/views/imagezoom/d;->e:J

    return-void
.end method

.method protected abstract a(I)V
.end method

.method public a(J)V
    .locals 3

    const/16 v0, 0x3c

    iget-wide v1, p0, Lcom/jeppesen/android/views/imagezoom/d;->e:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jeppesen/android/views/imagezoom/d;->a(I)V

    iput-wide p1, p0, Lcom/jeppesen/android/views/imagezoom/d;->e:J

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    sub-float/2addr v3, p2

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/d;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    add-float/2addr v3, p2

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/d;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->b:F

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/d;->d:F

    return-void
.end method

.method protected c()F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/d;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->c:F

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    sub-float/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/d;->d:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/d;->d:F

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/d;->a:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method
