.class public Lcom/jeppesen/android/util/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;

.field private static final b:Ljava/util/List;

.field private static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jeppesen/android/util/b;

    invoke-direct {v0}, Lcom/jeppesen/android/util/b;-><init>()V

    sput-object v0, Lcom/jeppesen/android/util/a;->a:Ljava/util/Comparator;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ref"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "STAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Taxi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Appr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CO"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/util/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "Ref"

    const-string v2, "Reference"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "STAR"

    const-string v2, "Standard Arrival"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "SID"

    const-string v2, "Standard Instrument Departure"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "Taxi"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "Appr"

    const-string v2, "Approach"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    const-string v1, "CO"

    const-string v2, "Company"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/util/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/util/a;->b:Ljava/util/List;

    return-object v0
.end method
