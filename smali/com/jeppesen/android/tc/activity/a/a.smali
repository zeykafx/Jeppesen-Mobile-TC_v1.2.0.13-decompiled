.class public Lcom/jeppesen/android/tc/activity/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final m:Ljava/lang/String;

.field private static final n:I = 0x3e8

.field private static final o:D = 0.001


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/location/LocationListener;

.field protected c:[Ljava/lang/String;

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:D

.field protected i:D

.field protected j:Landroid/location/Location;

.field protected k:Landroid/location/Location;

.field protected l:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/a/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/location/LocationListener;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    iput v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    new-instance v0, Lcom/jeppesen/android/tc/activity/a/b;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/a/b;-><init>(Lcom/jeppesen/android/tc/activity/a/a;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->l:Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/a/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/a/a;->b:Landroid/location/LocationListener;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling Activity and its locationListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/jeppesen/android/tc/activity/a/a;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->c:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not enough waypoints"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/a/a;)Landroid/location/Location;
    .locals 1

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->g()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->g()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->f()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->e()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    iget v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->g()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-direct {p0}, Lcom/jeppesen/android/tc/activity/a/a;->f()V

    goto :goto_0
.end method

.method private e()Landroid/location/Location;
    .locals 7

    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    iget v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/jeppesen/android/tc/activity/a/a;->h:D

    iget v5, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/jeppesen/android/tc/activity/a/a;->i:D

    iget v5, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0
.end method

.method private f()V
    .locals 7

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Lcom/jeppesen/android/tc/activity/a/a;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateSteps [latSteps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   lonSteps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->g:I

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->f:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->h:D

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->f:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->i:D

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->j:Landroid/location/Location;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->k:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    return-void
.end method

.method private g()Landroid/location/Location;
    .locals 4

    new-instance v0, Landroid/location/Location;

    sget-object v1, Lcom/jeppesen/android/tc/activity/a/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    aget-object v1, v1, v2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    iget v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    iget v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/a/a;->c:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/jeppesen/android/tc/activity/a/a;->e:I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->d:Z

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->l:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeppesen/android/tc/activity/a/a;->d:Z

    return-void
.end method
