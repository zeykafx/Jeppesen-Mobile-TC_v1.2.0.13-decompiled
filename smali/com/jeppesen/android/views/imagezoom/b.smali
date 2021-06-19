.class public Lcom/jeppesen/android/views/imagezoom/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final a:F = 1.0f

.field private static final b:F = 3.0f

.field private static final c:F = 0.004f

.field private static final d:F = 0.01f

.field private static final e:I = 0x32

.field private static final f:F = 0.4f


# instance fields
.field private final g:Lcom/jeppesen/android/views/imagezoom/j;

.field private h:Lcom/jeppesen/android/views/imagezoom/a;

.field private final i:Lcom/jeppesen/android/views/imagezoom/e;

.field private final j:Lcom/jeppesen/android/views/imagezoom/e;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private final o:Landroid/os/Handler;

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/j;

    invoke-direct {v0}, Lcom/jeppesen/android/views/imagezoom/j;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/e;

    invoke-direct {v0}, Lcom/jeppesen/android/views/imagezoom/e;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/e;

    invoke-direct {v0}, Lcom/jeppesen/android/views/imagezoom/e;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->o:Landroid/os/Handler;

    new-instance v0, Lcom/jeppesen/android/views/imagezoom/c;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/views/imagezoom/c;-><init>(Lcom/jeppesen/android/views/imagezoom/b;)V

    iput-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->p:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/e;->c(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/e;->c(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    invoke-virtual {v0, v3, v1}, Lcom/jeppesen/android/views/imagezoom/e;->b(FF)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    invoke-virtual {v0, v3, v1}, Lcom/jeppesen/android/views/imagezoom/e;->b(FF)V

    return-void
.end method

.method private a(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    return-object v0
.end method

.method static synthetic b(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    return-object v0
.end method

.method static synthetic c(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/j;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    return-object v0
.end method

.method static synthetic d(Lcom/jeppesen/android/views/imagezoom/b;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->c()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->e(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->c()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, v2}, Lcom/jeppesen/android/views/imagezoom/j;->e(F)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/jeppesen/android/views/imagezoom/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v1, v0}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2, v0}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/jeppesen/android/views/imagezoom/b;->a(F)F

    move-result v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->k:F

    invoke-direct {p0, v1}, Lcom/jeppesen/android/views/imagezoom/b;->a(F)F

    move-result v1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->l:F

    invoke-direct {p0, v0}, Lcom/jeppesen/android/views/imagezoom/b;->a(F)F

    move-result v1

    sub-float v1, v3, v1

    iput v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->m:F

    invoke-direct {p0, v0}, Lcom/jeppesen/android/views/imagezoom/b;->a(F)F

    move-result v0

    add-float/2addr v0, v3

    iput v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->n:F

    return-void
.end method


# virtual methods
.method public a()Lcom/jeppesen/android/views/imagezoom/j;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    return-object v0
.end method

.method public a(FF)V
    .locals 6

    const v5, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->a()F

    move-result v1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v0

    div-float v0, p1, v0

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2, v1}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v1

    div-float v1, p2, v1

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v2

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->l:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v2, v0, v4

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v2

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->k:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_2

    :cond_1
    mul-float/2addr v0, v5

    :cond_2
    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v2

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->n:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    cmpl-float v2, v1, v4

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v2

    iget v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->m:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    :cond_4
    mul-float/2addr v1, v5

    :cond_5
    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2, v0}, Lcom/jeppesen/android/views/imagezoom/j;->c(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/j;->d(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->notifyObservers()V

    return-void
.end method

.method public a(FFF)V
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v1, v0}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v2, v0}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v2

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/j;->c()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/jeppesen/android/views/imagezoom/j;->e(F)V

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->d()V

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v3, v0}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v4, v0}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v0

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v5}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v5

    sub-float v6, p2, v8

    div-float v1, v7, v1

    div-float v3, v7, v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/jeppesen/android/views/imagezoom/j;->c(F)V

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v3}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v3

    sub-float v4, p3, v8

    div-float v2, v7, v2

    div-float v0, v7, v0

    sub-float v0, v2, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/jeppesen/android/views/imagezoom/j;->d(F)V

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->e()V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->notifyObservers()V

    return-void
.end method

.method public a(Lcom/jeppesen/android/views/imagezoom/a;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0, p0}, Lcom/jeppesen/android/views/imagezoom/a;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0, p0}, Lcom/jeppesen/android/views/imagezoom/a;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(FF)V
    .locals 6

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->h:Lcom/jeppesen/android/views/imagezoom/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/a;->a()F

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/j;->a()F

    move-result v4

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v5, v0}, Lcom/jeppesen/android/views/imagezoom/j;->a(F)F

    move-result v5

    div-float v5, p1, v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/jeppesen/android/views/imagezoom/e;->a(FFJ)V

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/j;->b()F

    move-result v4

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/b;->g:Lcom/jeppesen/android/views/imagezoom/j;

    invoke-virtual {v5, v0}, Lcom/jeppesen/android/views/imagezoom/j;->b(F)F

    move-result v0

    div-float v0, p2, v0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/jeppesen/android/views/imagezoom/e;->a(FFJ)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->k:F

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/e;->b(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->i:Lcom/jeppesen/android/views/imagezoom/e;

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->l:F

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/e;->a(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->m:F

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/e;->b(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->j:Lcom/jeppesen/android/views/imagezoom/e;

    iget v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->n:F

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/views/imagezoom/e;->a(F)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/b;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jeppesen/android/views/imagezoom/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->d()V

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->e()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->d()V

    invoke-direct {p0}, Lcom/jeppesen/android/views/imagezoom/b;->e()V

    return-void
.end method
