.class final Lcom/jeppesen/android/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jeppesen/jeppview/jtca/data/Chart;Lcom/jeppesen/jeppview/jtca/data/Chart;)I
    .locals 3

    invoke-static {}, Lcom/jeppesen/android/util/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lcom/jeppesen/android/util/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jeppesen/jeppview/jtca/data/Chart;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/jeppesen/jeppview/jtca/data/Chart;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/jeppesen/jeppview/jtca/data/Chart;

    check-cast p2, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {p0, p1, p2}, Lcom/jeppesen/android/util/b;->a(Lcom/jeppesen/jeppview/jtca/data/Chart;Lcom/jeppesen/jeppview/jtca/data/Chart;)I

    move-result v0

    return v0
.end method
