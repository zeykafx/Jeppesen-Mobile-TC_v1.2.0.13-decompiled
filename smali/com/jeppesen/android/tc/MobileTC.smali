.class public Lcom/jeppesen/android/tc/MobileTC;
.super Lcom/jeppesen/android/util/JeppAndroidApp;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/jeppesen/android/echarts/TCLNatives;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/io/File;

.field private static f:Ljava/io/File;

.field private static g:Z

.field private static h:Landroid/location/Location;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/jeppesen/android/tc/MobileTC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;-><init>()V

    return-void
.end method

.method public static a()Lcom/jeppesen/android/echarts/TCLNatives;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->c:Lcom/jeppesen/android/echarts/TCLNatives;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/jeppesen/android/tc/MobileTC;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/jeppesen/android/tc/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/jeppesen/android/tc/b;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/tc/MobileTC;->m:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lcom/jeppesen/android/tc/MobileTC;->h:Landroid/location/Location;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/jeppesen/android/tc/MobileTC;->i:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/jeppesen/android/tc/MobileTC;->j:Z

    return-void
.end method

.method public static c()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/jeppesen/android/tc/MobileTC;->k:Z

    return-void
.end method

.method public static d()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    return-object v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/jeppesen/android/tc/MobileTC;->l:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lcom/jeppesen/android/c/a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/jeppesen/android/c/a;->a(I)Z

    move-result v0

    sput-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->g:Z

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->g:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->g:Z

    return v0
.end method

.method public static g()Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->h:Landroid/location/Location;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->i:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->j:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->k:Z

    return v0
.end method

.method public static k()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static l()V
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jeppesen/android/tc/MobileTC;->m:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lcom/jeppesen/android/tc/MobileTC;->l:Z

    return v0
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v1, "initializeApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "done"

    :try_start_0
    new-instance v1, Lcom/jeppesen/android/echarts/TCLNatives;

    invoke-direct {v1}, Lcom/jeppesen/android/echarts/TCLNatives;-><init>()V

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->c:Lcom/jeppesen/android/echarts/TCLNatives;

    sget-boolean v1, Lcom/jeppesen/android/util/JeppAndroidApp;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jeppesen/android/tc/MobileTC;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/android/echarts/TCLNatives;->setRootStoragePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/jeppesen/android/echarts/TCLNatives;->initAssets()Z

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/jeppview/jtca/JITHandler;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/jeppesen/jeppview/jtca/JITHandler;->b()Ljava/util/List;

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/android/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/android/c/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/jeppview/jtca/NOTAMHandler;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/jeppesen/android/util/k;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "rooted"

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/MobileTC;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v2, "doInBackground() Oh No!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "failed"

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/jeppesen/android/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/jeppesen/android/a/a;->a()Lcom/jeppesen/android/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jeppesen/android/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/MobileTC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "IATAConversionCRC"

    invoke-virtual {p0}, Lcom/jeppesen/android/tc/MobileTC;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jeppesen/android/util/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "failed"

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->generateSiteCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;->generateActivationCodeFromSiteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "failed"

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/jeppesen/android/c/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v1, "unable to confirm data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "failed"

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->e()Z

    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jeppesen/jeppview/jtca/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to mkdirs(), downloading WILL fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jeppesen/android/tc/MobileTC;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jeppesen/jeppview/jtca/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to mkdirs(), downloading WILL fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v1, Lcom/jeppesen/android/tc/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jeppesen/android/tc/c;-><init>(Lcom/jeppesen/android/tc/MobileTC;Lcom/jeppesen/android/tc/b;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/jeppesen/android/tc/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jeppesen/android/tc/d;-><init>(Lcom/jeppesen/android/tc/MobileTC;Lcom/jeppesen/android/tc/b;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/jeppesen/android/tc/MobileTC;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/jeppesen/android/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/jeppesen/android/tc/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jeppesen/android/tc/e;-><init>(Lcom/jeppesen/android/tc/MobileTC;Lcom/jeppesen/android/tc/b;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/jeppesen/android/tc/MobileTC;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    invoke-virtual {p0}, Lcom/jeppesen/android/tc/MobileTC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    :cond_9
    sget-object v1, Lcom/jeppesen/android/tc/MobileTC;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jeppesen/jeppview/jtca/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "failed"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    sget-object v0, Lcom/jeppesen/android/tc/MobileTC;->b:Ljava/lang/String;

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/jeppesen/android/util/JeppAndroidApp;->onTerminate()V

    return-void
.end method
