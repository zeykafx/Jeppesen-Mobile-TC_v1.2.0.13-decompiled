.class public Lcom/jeppesen/jeppview/jtca/data/Airport;
.super Ljava/lang/Object;


# static fields
.field public static g:Ljava/util/Comparator; = null

.field public static h:Ljava/util/Comparator; = null

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String; = "."


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Float;

.field e:Ljava/lang/Float;

.field f:Ljava/lang/Float;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/jeppview/jtca/data/Airport;->i:Ljava/lang/String;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/data/Airport$1;

    invoke-direct {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport$1;-><init>()V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/data/Airport;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/data/Airport$2;

    invoke-direct {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport$2;-><init>()V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/data/Airport;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->c:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->d:Ljava/lang/Float;

    invoke-virtual {p0, p5}, Lcom/jeppesen/jeppview/jtca/data/Airport;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->e:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x4e

    const/16 v2, 0x2b

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x5

    :try_start_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-object v2, Lcom/jeppesen/jeppview/jtca/data/Airport;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->d:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->f:Ljava/lang/Float;

    return-void
.end method

.method b(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x57

    const/16 v2, 0x2d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    const/16 v3, 0x2b

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, 0x4

    const/4 v2, 0x6

    :try_start_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-object v2, Lcom/jeppesen/jeppview/jtca/data/Airport;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->e:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->g()V

    return-void
.end method

.method public f()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->f:Ljava/lang/Float;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Airport;->k:Ljava/lang/String;

    return-object v0
.end method
