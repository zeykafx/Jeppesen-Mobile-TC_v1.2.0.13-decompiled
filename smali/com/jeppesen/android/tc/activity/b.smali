.class Lcom/jeppesen/android/tc/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ActivationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/b;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/b;->a:Lcom/jeppesen/android/tc/activity/ActivationActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ActivationActivity;->d()V

    return-void
.end method
