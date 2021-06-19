.class public Lcom/jeppesen/android/echarts/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final l:Z


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/echarts/view/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x800

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->e:Z

    iput v1, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iput v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    iput-object v2, p0, Lcom/jeppesen/android/echarts/view/a;->j:Landroid/os/Handler;

    iput-object v2, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;III)I
    .locals 9

    const v8, 0x88f0

    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    const v7, 0x8d41

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    new-array v2, v4, [I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    aget v6, v2, v5

    invoke-interface {v0, v1, v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    new-array v2, v4, [I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    aget v2, v2, v5

    new-array v3, v4, [I

    invoke-interface {v0, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    aget v3, v3, v5

    iget-boolean v4, p0, Lcom/jeppesen/android/echarts/view/a;->c:Z

    if-eqz v4, :cond_0

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    const v3, 0x8d48

    invoke-interface {v0, v7, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    const v3, 0x8d20

    invoke-interface {v0, v1, v3, v7, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    :goto_0
    const v2, 0x8ce0

    const/16 v3, 0xde1

    move v4, p4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v2

    const v3, 0x8cd5

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer is not complete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0, v7, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    invoke-interface {v0, v7, v8, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    invoke-interface {v0, v7, v8, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    const v4, 0x8d00

    invoke-interface {v0, v1, v4, v7, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    const v3, 0x8d20

    invoke-interface {v0, v1, v3, v7, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL;)V

    return v6
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 10

    const/4 v9, 0x2

    const-wide/32 v7, 0x100000

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Ljava/lang/Double;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v5

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {v3, v9}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v3, v9}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const-string v4, "native_mem"

    const-string v5, "debug. ================================="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "native_mem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debug.heap native: allocated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "MB of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB free) in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.myapp.android."

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "native_mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug.memory: allocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    div-long/2addr v4, v7

    long-to-double v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    div-long/2addr v4, v7

    long-to-double v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v7

    long-to-double v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB free)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1

    const-string v0, "GL_OES_framebuffer_object"

    invoke-direct {p0, p1, v0}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jeppesen/android/echarts/view/a;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;II)I
    .locals 12

    const/16 v11, 0x2901

    const/16 v3, 0x1908

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xde1

    new-array v0, v4, [I

    invoke-interface {p1, v4, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v10, v0, v2

    invoke-interface {p1, v1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, v2

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL;)V

    return v10
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1

    const-string v0, "GL_OES_stencil8"

    invoke-direct {p0, p1, v0}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1

    const-string v0, "GL_OES_packed_depth_stencil"

    invoke-direct {p0, p1, v0}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/echarts/view/a;->j:Landroid/os/Handler;

    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    mul-int v8, p2, p3

    :try_start_0
    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    sub-int v2, v0, p3

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget v2, v3, v0

    const v4, -0xff0100

    and-int/2addr v4, v2

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/view/a;->a(Ljava/lang/Class;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/echarts/view/a;->a(Ljava/lang/Class;)V

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeppesen/android/echarts/view/a;->k:Landroid/graphics/Bitmap;

    sub-int v4, v8, p2

    neg-int v5, p2

    move v6, v1

    move v7, v1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 4

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLError() GLError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const v10, 0x8d40

    const/4 v9, 0x0

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v1, "onDrawFrame() called in TCLRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a:Z

    if-eqz v0, :cond_7

    sput-boolean v9, Lcom/jeppesen/android/echarts/view/TCLGLSurfaceView;->a:Z

    iget-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v1, "binding framebuffer in onDrawFrame()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->g:I

    invoke-interface {v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_2
    const-wide/16 v0, 0x0

    sget-boolean v2, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_3
    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->renderChart()V

    sget-boolean v2, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time to render to opengl is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v0

    long-to-double v2, v2

    div-double/2addr v2, v7

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v2, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v2, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move-wide v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    iget v0, v0, Lcom/jeppesen/android/echarts/EChartsSize;->width:I

    sget-object v3, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    iget v3, v3, Lcom/jeppesen/android/echarts/EChartsSize;->height:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time to generate bitmap is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    long-to-double v1, v1

    div-double/2addr v1, v7

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v0, :cond_6

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {p1, v10, v9}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_6
    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->j:Landroid/os/Handler;

    if-nez v0, :cond_8

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v1, "Handler has not been set in onDrawFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError failure in getBitmap() for ICAO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->getIcao()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->getIndexNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Procedure ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->getProcedureId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chart size: width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    iget v4, v4, Lcom/jeppesen/android/echarts/EChartsSize;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jeppesen/android/echarts/TCLNatives;->tclSize:Lcom/jeppesen/android/echarts/EChartsSize;

    iget v4, v4, Lcom/jeppesen/android/echarts/EChartsSize;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v1, "sending message to ui thread in onDrawFrame()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/jeppesen/android/echarts/view/a;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/echarts/view/a;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_a
    move-wide v1, v0

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    const/16 v4, 0x300

    const/4 v3, 0x0

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v1, "onSurfaceCreated called, initializing tcl library and framebuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    iget-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/jeppesen/android/echarts/view/a;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->c:Z

    invoke-direct {p0, p1}, Lcom/jeppesen/android/echarts/view/a;->c(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->d:Z

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-direct {p0, p1, v0, v1}, Lcom/jeppesen/android/echarts/view/a;->b(Ljavax/microedition/khronos/opengles/GL10;II)I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/echarts/view/a;->f:I

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    iget v2, p0, Lcom/jeppesen/android/echarts/view/a;->f:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jeppesen/android/echarts/view/a;->a(Ljavax/microedition/khronos/opengles/GL10;III)I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/echarts/view/a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-interface {p1, v3, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-static {v0, v1}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->Init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_2
    invoke-interface {p1, v3, v3, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-static {v4, v4}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v2, "onSurfaceCreated() Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-interface {p1, v3, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget v0, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-static {v0, v1}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v3, v3, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-static {v4, v4}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/jeppesen/android/echarts/view/a;->b:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v2, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-interface {p1, v3, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget v1, p0, Lcom/jeppesen/android/echarts/view/a;->h:I

    iget v2, p0, Lcom/jeppesen/android/echarts/view/a;->i:I

    invoke-static {v1, v2}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    :goto_2
    throw v0

    :cond_4
    invoke-interface {p1, v3, v3, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-static {v4, v4}, Lcom/jeppesen/android/echarts/TCLNatives;->tclSetBufferSize(II)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/echarts/view/a;->a:Ljava/lang/String;

    const-string v2, "Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
