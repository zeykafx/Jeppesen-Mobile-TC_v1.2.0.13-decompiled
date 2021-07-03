.class public abstract Lcom/jeppesen/android/util/JeppAndroidApp;
.super Landroid/app/Application;


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/jeppesen/android/util/JeppAndroidApp;

.field private static d:Landroid/content/Context;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    const-class v0, Lcom/jeppesen/android/util/JeppAndroidApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    sput-object v2, Lcom/jeppesen/android/util/JeppAndroidApp;->c:Lcom/jeppesen/android/util/JeppAndroidApp;

    sput-object v2, Lcom/jeppesen/android/util/JeppAndroidApp;->d:Landroid/content/Context;

    sput-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/jeppesen/android/util/JeppAndroidApp;->c:Lcom/jeppesen/android/util/JeppAndroidApp;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NativeHeapSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HeapAllocatedSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NativeHeapFreeSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->e:Z

    return v0
.end method

.method public static p()Lcom/jeppesen/android/util/JeppAndroidApp;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->c:Lcom/jeppesen/android/util/JeppAndroidApp;

    return-object v0
.end method

.method public static q()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->d:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "onCreate()"

    invoke-static {v0}, Lcom/jeppesen/android/util/JeppAndroidApp;->a(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_3

    :cond_3
    sput-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->e:Z

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    const-string v3, "Unable to get package info: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    const-string v3, "Oh No!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onLowMemory()"

    invoke-static {v0}, Lcom/jeppesen/android/util/JeppAndroidApp;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    sget-boolean v0, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/util/JeppAndroidApp;->b:Ljava/lang/String;

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
