.class Lcom/jeppesen/android/tc/activity/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/be;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/be;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->o(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/be;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->k(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
