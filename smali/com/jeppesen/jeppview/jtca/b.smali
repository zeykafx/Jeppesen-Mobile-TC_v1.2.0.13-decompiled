.class public final enum Lcom/jeppesen/jeppview/jtca/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/jeppesen/jeppview/jtca/b;

.field public static final enum b:Lcom/jeppesen/jeppview/jtca/b;

.field public static final enum c:Lcom/jeppesen/jeppview/jtca/b;

.field public static final enum d:Lcom/jeppesen/jeppview/jtca/b;

.field public static final enum e:Lcom/jeppesen/jeppview/jtca/b;

.field private static final synthetic f:[Lcom/jeppesen/jeppview/jtca/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/jeppesen/jeppview/jtca/b;

    const-string v1, "TC_UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/jeppesen/jeppview/jtca/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->a:Lcom/jeppesen/jeppview/jtca/b;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/b;

    const-string v1, "TC_OUT_OF_DATE"

    invoke-direct {v0, v1, v3}, Lcom/jeppesen/jeppview/jtca/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->b:Lcom/jeppesen/jeppview/jtca/b;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/b;

    const-string v1, "TC_TOO_OLD"

    invoke-direct {v0, v1, v4}, Lcom/jeppesen/jeppview/jtca/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->c:Lcom/jeppesen/jeppview/jtca/b;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/b;

    const-string v1, "TC_CURRENT"

    invoke-direct {v0, v1, v5}, Lcom/jeppesen/jeppview/jtca/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->d:Lcom/jeppesen/jeppview/jtca/b;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/b;

    const-string v1, "TC_NEW_COVERAGES"

    invoke-direct {v0, v1, v6}, Lcom/jeppesen/jeppview/jtca/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->e:Lcom/jeppesen/jeppview/jtca/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jeppesen/jeppview/jtca/b;

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->a:Lcom/jeppesen/jeppview/jtca/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->b:Lcom/jeppesen/jeppview/jtca/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->c:Lcom/jeppesen/jeppview/jtca/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->d:Lcom/jeppesen/jeppview/jtca/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jeppesen/jeppview/jtca/b;->e:Lcom/jeppesen/jeppview/jtca/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jeppesen/jeppview/jtca/b;->f:[Lcom/jeppesen/jeppview/jtca/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jeppesen/jeppview/jtca/b;
    .locals 1

    const-class v0, Lcom/jeppesen/jeppview/jtca/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/b;

    return-object v0
.end method

.method public static values()[Lcom/jeppesen/jeppview/jtca/b;
    .locals 1

    sget-object v0, Lcom/jeppesen/jeppview/jtca/b;->f:[Lcom/jeppesen/jeppview/jtca/b;

    invoke-virtual {v0}, [Lcom/jeppesen/jeppview/jtca/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jeppesen/jeppview/jtca/b;

    return-object v0
.end method
