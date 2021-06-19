.class Lcom/jeppesen/android/tc/activity/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/jeppesen/android/tc/activity/bn;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/bn;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bo;->b:Lcom/jeppesen/android/tc/activity/bn;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/bo;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bo;->b:Lcom/jeppesen/android/tc/activity/bn;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/bn;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain coverages list, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/bo;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Ljava/lang/String;)V

    return-void
.end method
