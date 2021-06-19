.class public Lcom/jeppesen/android/views/imagezoom/j;
.super Ljava/util/Observable;


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->b:F

    return v0
.end method

.method public a(F)F
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->c:F

    return v0
.end method

.method public b(F)F
    .locals 2

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    return v0
.end method

.method public c(F)V
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/j;->b:F

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/j;->setChanged()V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/j;->c:F

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/j;->setChanged()V

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/jeppesen/android/views/imagezoom/j;->a:F

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/j;->setChanged()V

    :cond_0
    return-void
.end method
