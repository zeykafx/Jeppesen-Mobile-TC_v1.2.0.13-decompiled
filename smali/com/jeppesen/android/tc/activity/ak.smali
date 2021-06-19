.class Lcom/jeppesen/android/tc/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/DeactivateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ak;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ak;->a:Lcom/jeppesen/android/tc/activity/DeactivateActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/DeactivateActivity;->finish()V

    return-void
.end method
