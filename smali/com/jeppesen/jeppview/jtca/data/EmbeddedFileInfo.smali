.class public Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/jeppesen/jeppview/jtca/data/EmbeddedFileInfo;->b:J

    return-wide v0
.end method
