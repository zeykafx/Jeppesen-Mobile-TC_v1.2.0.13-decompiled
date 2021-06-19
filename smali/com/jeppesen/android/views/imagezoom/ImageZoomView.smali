.class public Lcom/jeppesen/android/views/imagezoom/ImageZoomView;
.super Landroid/widget/ImageView;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/jeppesen/android/views/imagezoom/b;

.field private c:Lcom/jeppesen/android/views/imagezoom/f;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Lcom/jeppesen/android/views/imagezoom/a;

.field private h:Landroid/graphics/Bitmap;

.field private i:Lcom/jeppesen/android/views/imagezoom/j;

.field private j:I

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Lcom/jeppesen/jeppview/jtca/data/IntPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/a;

    invoke-direct {v0}, Lcom/jeppesen/android/views/imagezoom/a;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->l:Landroid/content/Context;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/b;

    invoke-direct {v0}, Lcom/jeppesen/android/views/imagezoom/b;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/f;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jeppesen/android/views/imagezoom/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->c:Lcom/jeppesen/android/views/imagezoom/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FF)V
    .locals 10

    const v6, 0x3e19999a    # 0.15f

    const/4 v1, 0x0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->g()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x41880000    # 17.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x41a40000    # 20.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/jeppesen/android/echarts/TCLNatives;->getTclLatLonToXY(DD)Lcom/jeppesen/jeppview/jtca/data/IntPoint;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sub-float v2, p2, v6

    sub-float v3, p3, v6

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v8

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->p:Lcom/jeppesen/jeppview/jtca/data/IntPoint;

    invoke-virtual {v2}, Lcom/jeppesen/jeppview/jtca/data/IntPoint;->a()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->p:Lcom/jeppesen/jeppview/jtca/data/IntPoint;

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/IntPoint;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->o:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->o:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Lcom/jeppesen/jeppview/jtca/data/IntPoint;->a()I

    move-result v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Lcom/jeppesen/jeppview/jtca/data/IntPoint;->b()I

    move-result v4

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->n:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->o:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->c:Lcom/jeppesen/android/views/imagezoom/f;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->c:Lcom/jeppesen/android/views/imagezoom/f;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/f;->a(Lcom/jeppesen/android/views/imagezoom/b;)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->setZoomState(Lcom/jeppesen/android/views/imagezoom/j;)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getAspectQuotient()Lcom/jeppesen/android/views/imagezoom/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/b;->a(Lcom/jeppesen/android/views/imagezoom/a;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/data/IntPoint;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jeppesen/jeppview/jtca/data/IntPoint;-><init>(II)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->p:Lcom/jeppesen/jeppview/jtca/data/IntPoint;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method public c()V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->c(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->d(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->e(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->b:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a()Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->notifyObservers()V

    :cond_0
    return-void
.end method

.method public getAspectQuotient()Lcom/jeppesen/android/views/imagezoom/a;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v10, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v3}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v4

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v5, v0}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v5

    int-to-float v6, v1

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v6, v0}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v0

    int-to-float v6, v2

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x423c0000    # 47.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v10

    float-to-int v7, v7

    const/high16 v8, 0x425c0000    # 55.0f

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    add-float/2addr v6, v10

    float-to-int v6, v6

    iget-object v9, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v10, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    int-to-float v10, v10

    mul-float/2addr v3, v10

    int-to-float v10, v1

    mul-float v11, v5, v12

    div-float/2addr v10, v11

    sub-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v9, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v9, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    int-to-float v9, v2

    mul-float v10, v0, v12

    div-float/2addr v9, v10

    sub-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getRight()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getTop()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getBottom()I

    move-result v2

    sub-int/2addr v2, v8

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->currentChartIsAnOwnshipChartType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->isTclGeoRefd()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v5, v0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->a(Landroid/graphics/Canvas;FF)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jeppesen/android/views/imagezoom/a;->a(FFFF)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->notifyObservers()V

    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 5

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->j:I

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->k:I

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jeppesen/android/views/imagezoom/a;->a(FFFF)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->g:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->notifyObservers()V

    :cond_0
    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    return-void
.end method

.method public setZoomState(Lcom/jeppesen/android/views/imagezoom/j;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, p0}, Lcom/jeppesen/android/views/imagezoom/j;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->i:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, p0}, Lcom/jeppesen/android/views/imagezoom/j;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->invalidate()V

    return-void
.end method
