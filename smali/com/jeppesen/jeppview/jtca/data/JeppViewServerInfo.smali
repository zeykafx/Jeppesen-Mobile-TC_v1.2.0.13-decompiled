.class public Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->a:I

    iput-object p2, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/JeppViewServerInfo;->b:Ljava/lang/String;

    return-object v0
.end method
