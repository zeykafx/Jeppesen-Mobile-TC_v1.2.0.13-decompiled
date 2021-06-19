.class public Lcom/jeppesen/jeppview/jtca/ActivationNativeWrapper;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "JNI"

    const-string v1, "Trying to load libupdateservercomm.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "updateservercomm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "JNI"

    const-string v1, "libupdateservercomm.so loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "JNI"

    const-string v1, "WARNING: Could not load libupdateservercomm.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native applyUpdateChartsBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native createDeactivationCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native formatSerialNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateActivationCodeFromSiteCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateSiteCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateSiteCodeFromActivationCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCoverageCodes(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getJeppViewServerInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;
.end method

.method public static native getTermChartDownload(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native resumeTermChartDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native testConnectToHost(Ljava/lang/String;I)I
.end method
