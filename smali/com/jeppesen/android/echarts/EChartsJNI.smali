.class public Lcom/jeppesen/android/echarts/EChartsJNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mc3-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native tclClose(I)V
.end method

.method public static native tclDisplay(ILandroid/graphics/Canvas;FFIIIIIII)V
.end method

.method public static native tclGetChartInfo(ILcom/jeppesen/android/echarts/EChartsInfo;)V
.end method

.method public static native tclGetVersion([I)V
.end method

.method public static native tclLibClose()V
.end method

.method public static native tclLibInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native tclOpen(Ljava/lang/String;ILjava/lang/String;)I
.end method
