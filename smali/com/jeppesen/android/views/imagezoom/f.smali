.class public Lcom/jeppesen/android/views/imagezoom/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final c:J = 0x32L

.field private static final q:I = 0x3


# instance fields
.field a:Landroid/graphics/PointF;

.field b:F

.field private d:Lcom/jeppesen/android/views/imagezoom/i;

.field private e:Lcom/jeppesen/android/views/imagezoom/b;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/view/VelocityTracker;

.field private final k:I

.field private final l:I

.field private final m:Landroid/os/Vibrator;

.field private final n:I

.field private final o:Z

.field private final p:Landroid/os/Handler;

.field private r:Landroid/view/MotionEvent;

.field private s:Landroid/view/MotionEvent;

.field private final t:I

.field private u:I

.field private v:I

.field private final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/jeppesen/android/views/imagezoom/i;->a:Lcom/jeppesen/android/views/imagezoom/i;

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->o:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->b:F

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/g;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/views/imagezoom/g;-><init>(Lcom/jeppesen/android/views/imagezoom/f;)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->w:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->l:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->k:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->n:I

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->m:Landroid/os/Vibrator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->t:I

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/h;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/views/imagezoom/h;-><init>(Lcom/jeppesen/android/views/imagezoom/f;)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->p:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->v:I

    iget v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->v:I

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->v:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->u:I

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jeppesen/android/views/imagezoom/f;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->m:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/views/imagezoom/f;Lcom/jeppesen/android/views/imagezoom/i;)Lcom/jeppesen/android/views/imagezoom/i;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    return-object p1
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/f;->t:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->u:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/jeppesen/android/views/imagezoom/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/jeppesen/android/views/imagezoom/i;->a:Lcom/jeppesen/android/views/imagezoom/i;

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-direct {p0, p2}, Lcom/jeppesen/android/views/imagezoom/f;->a(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->b:F

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->b:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lcom/jeppesen/android/views/imagezoom/f;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->h:F

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->i:F

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->f:F

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->g:F

    sget-object v0, Lcom/jeppesen/android/views/imagezoom/i;->c:Lcom/jeppesen/android/views/imagezoom/i;

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->p:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->p:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->r:Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->s:Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->r:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->s:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v1, p2}, Lcom/jeppesen/android/views/imagezoom/f;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;

    invoke-virtual {p1}, Lcom/jeppesen/android/views/imagezoom/ImageZoomView;->c()V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->c()V

    :goto_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->r:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/b;->b()V

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->h:F

    iput v3, p0, Lcom/jeppesen/android/views/imagezoom/f;->i:F

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->f:F

    iput v3, p0, Lcom/jeppesen/android/views/imagezoom/f;->g:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->p:Landroid/os/Handler;

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->t:I

    int-to-long v4, v1

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_3
    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->f:F

    sub-float v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->g:F

    sub-float v4, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v7, :cond_4

    invoke-direct {p0, p2}, Lcom/jeppesen/android/views/imagezoom/f;->a(Landroid/view/MotionEvent;)F

    move-result v0

    :cond_4
    iget v5, p0, Lcom/jeppesen/android/views/imagezoom/f;->b:F

    sub-float v5, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    sget-object v7, Lcom/jeppesen/android/views/imagezoom/i;->c:Lcom/jeppesen/android/views/imagezoom/i;

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    float-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/jeppesen/android/views/imagezoom/f;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/jeppesen/android/views/imagezoom/f;->i:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lcom/jeppesen/android/views/imagezoom/b;->a(FFF)V

    :cond_5
    :goto_2
    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->f:F

    iput v3, p0, Lcom/jeppesen/android/views/imagezoom/f;->g:F

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->b:F

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    sget-object v6, Lcom/jeppesen/android/views/imagezoom/i;->b:Lcom/jeppesen/android/views/imagezoom/i;

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    neg-float v1, v1

    neg-float v4, v4

    invoke-virtual {v5, v1, v4}, Lcom/jeppesen/android/views/imagezoom/b;->a(FF)V

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->h:F

    sub-float/2addr v1, v2

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->i:F

    sub-float/2addr v4, v3

    mul-float/2addr v1, v1

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v4, p0, Lcom/jeppesen/android/views/imagezoom/f;->k:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/jeppesen/android/views/imagezoom/i;->b:Lcom/jeppesen/android/views/imagezoom/i;

    iput-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    goto :goto_2

    :pswitch_4
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->s:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    sget-object v1, Lcom/jeppesen/android/views/imagezoom/i;->b:Lcom/jeppesen/android/views/imagezoom/i;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->n:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jeppesen/android/views/imagezoom/b;->b(FF)V

    :goto_3
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/jeppesen/android/views/imagezoom/f;->j:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/jeppesen/android/views/imagezoom/i;->a:Lcom/jeppesen/android/views/imagezoom/i;

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->d:Lcom/jeppesen/android/views/imagezoom/i;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/f;->e:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-virtual {v0, v5, v5}, Lcom/jeppesen/android/views/imagezoom/b;->b(FF)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
