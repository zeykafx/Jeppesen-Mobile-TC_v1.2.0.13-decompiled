.class public Lcom/jeppesen/android/util/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/util/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/util/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(D)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/jeppesen/android/util/e;->d(D)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    aget v0, v0, v4

    new-instance v3, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v1, v2, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()D
    .locals 12

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v6, v2, v8

    if-gtz v6, :cond_0

    sub-long/2addr v0, v10

    const-wide/16 v6, 0xc

    add-long/2addr v2, v6

    :cond_0
    const-wide/16 v6, 0x64

    div-long v6, v0, v6

    sub-long v6, v8, v6

    const-wide/16 v8, 0x190

    div-long v8, v0, v8

    add-long/2addr v6, v8

    const-wide v8, 0x4076d40000000000L    # 365.25

    long-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    const-wide v8, 0x403e99a027525461L    # 30.6001

    add-long/2addr v2, v10

    long-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    add-double/2addr v0, v4

    const-wide v2, 0x413a42a280000000L    # 1720994.5

    add-double/2addr v0, v2

    long-to-double v2, v6

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(D)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Demo charts, not for navigation usage."

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/jeppesen/android/util/e;->d(D)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    aget v0, v0, v4

    new-instance v3, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v1, v2, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(D)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-wide/16 v3, 0x0

    cmpl-double v3, p0, v3

    if-nez v3, :cond_0

    const-string v0, "Demo charts, not for navigation usage."

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/jeppesen/android/util/e;->d(D)[I

    move-result-object v3

    aget v4, v3, v1

    aget v5, v3, v2

    aget v3, v3, v6

    aget v0, v0, v5

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v3, v4, 0x190

    if-eqz v3, :cond_1

    rem-int/lit8 v3, v4, 0x4

    if-nez v3, :cond_2

    rem-int/lit8 v3, v4, 0x64

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    if-le v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    div-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public static d(D)[I
    .locals 12

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    const-wide v4, 0x41418a8c80000000L    # 2299161.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    :goto_0
    const-wide v4, 0x4097d00000000000L    # 1524.0

    add-double/2addr v0, v4

    const-wide v4, 0x405e866666666666L    # 122.1

    sub-double v4, v0, v4

    const-wide v6, 0x4076d40000000000L    # 365.25

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide v6, 0x4076d40000000000L    # 365.25

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double v8, v0, v6

    const-wide v10, 0x403e99a027525461L    # 30.6001

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v0, v6

    const-wide v6, 0x403e99a027525461L    # 30.6001

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v0, v6

    add-double/2addr v0, v2

    double-to-int v2, v0

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    cmpg-double v0, v8, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v8, v0

    :goto_1
    double-to-int v3, v0

    const/4 v0, 0x2

    if-le v3, v0, :cond_2

    const-wide v0, 0x40b26c0000000000L    # 4716.0

    sub-double v0, v4, v0

    :goto_2
    double-to-int v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    return-object v1

    :cond_0
    const-wide v4, 0x413c7dd040000000L    # 1867216.25

    sub-double v4, v0, v4

    const-wide v6, 0x40e1d58800000000L    # 36524.25

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    add-double/2addr v0, v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x402a000000000000L    # 13.0

    sub-double v0, v8, v0

    goto :goto_1

    :cond_2
    const-wide v0, 0x40b26b0000000000L    # 4715.0

    sub-double v0, v4, v0

    goto :goto_2
.end method

.method public static e(D)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p0, p1}, Lcom/jeppesen/android/util/e;->d(D)[I

    move-result-object v1

    const/4 v0, 0x0

    aget v2, v1, v0

    const/4 v0, 0x1

    aget v0, v1, v0

    const/4 v3, 0x2

    aget v1, v1, v3

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v2, v0, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
