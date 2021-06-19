.class Lcom/jeppesen/android/tc/activity/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/aj;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    new-instance v0, Lcom/jeppesen/android/tc/activity/al;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/aj;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/al;-><init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;Lcom/jeppesen/android/tc/activity/aj;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jeppesen/android/tc/activity/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
