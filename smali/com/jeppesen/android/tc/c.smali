.class Lcom/jeppesen/android/tc/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/MobileTC;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/MobileTC;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/c;->a:Lcom/jeppesen/android/tc/MobileTC;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/MobileTC;Lcom/jeppesen/android/tc/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/c;-><init>(Lcom/jeppesen/android/tc/MobileTC;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jeppesen/android/tc/c;->a:Lcom/jeppesen/android/tc/MobileTC;

    invoke-virtual {v1}, Lcom/jeppesen/android/tc/MobileTC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jeppesen/android/util/i;->b(Landroid/content/Context;)V

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
