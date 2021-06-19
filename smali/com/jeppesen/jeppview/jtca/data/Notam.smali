.class public Lcom/jeppesen/jeppview/jtca/data/Notam;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/jeppview/jtca/data/Notam;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/jeppview/jtca/data/Notam;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->b:Z

    iput-boolean p2, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->c:Z

    iput-boolean p3, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->d:Z

    iput-boolean p4, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->e:Z

    iput-object p5, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->h:Ljava/lang/String;

    iput p8, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->i:I

    iput-object p9, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->l:Ljava/lang/String;

    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/jeppview/jtca/data/Notam;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->b:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->d:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->d:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->i:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/jeppview/jtca/data/Notam;->l:Ljava/lang/String;

    return-object v0
.end method
