.class public Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;
.super Lcom/jeppesen/jeppview/jtca/data/Chart;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jeppesen/jeppview/jtca/data/Chart;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->a:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->a:Ljava/lang/String;

    return-object v0
.end method
