.class final Lcom/jeppesen/jeppview/jtca/data/Airport$1;
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
.method public a(Lcom/jeppesen/jeppview/jtca/data/Airport;Lcom/jeppesen/jeppview/jtca/data/Airport;)I
    .locals 2

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/jeppesen/jeppview/jtca/data/Airport;

    check-cast p2, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {p0, p1, p2}, Lcom/jeppesen/jeppview/jtca/data/Airport$1;->a(Lcom/jeppesen/jeppview/jtca/data/Airport;Lcom/jeppesen/jeppview/jtca/data/Airport;)I

    move-result v0

    return v0
.end method
