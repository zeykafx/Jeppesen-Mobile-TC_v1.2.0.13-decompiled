.class public Lcom/jeppesen/android/views/imagezoom/a;
.super Ljava/util/Observable;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/a;->a:F

    return v0
.end method

.method public a(FFFF)V
    .locals 2

    div-float v0, p3, p4

    div-float v1, p1, p2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/a;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/a;->a:F

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/a;->setChanged()V

    :cond_0
    return-void
.end method
