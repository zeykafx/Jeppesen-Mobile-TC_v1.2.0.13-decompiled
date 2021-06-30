.class public Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/jeppesen/android/echarts/view/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a:Z

    const-class v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-direct {p0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-direct {p0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v6, 0x4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    new-instance v0, Lcom/jeppesen/android/echarts/view/a;

    invoke-direct {v0}, Lcom/jeppesen/android/echarts/view/a;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0, v5}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-virtual {v0}, Lcom/jeppesen/android/echarts/view/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-virtual {v0, p1}, Lcom/jeppesen/android/echarts/view/a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setMyHandler(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->c:Lcom/jeppesen/android/echarts/view/a;

    invoke-virtual {v0, p1}, Lcom/jeppesen/android/echarts/view/a;->a(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->b:Ljava/lang/String;

    const-string v1, "setMyHandler() called before TCLRenderer has been created!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
