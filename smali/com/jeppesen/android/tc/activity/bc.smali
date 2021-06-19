.class Lcom/jeppesen/android/tc/activity/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bc;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iput p2, p0, Lcom/jeppesen/android/tc/activity/bc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bc;->b:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    iget v1, p0, Lcom/jeppesen/android/tc/activity/bc;->a:I

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->showDialog(I)V

    return-void
.end method
