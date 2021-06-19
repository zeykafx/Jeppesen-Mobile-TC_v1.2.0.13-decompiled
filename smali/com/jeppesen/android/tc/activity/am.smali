.class Lcom/jeppesen/android/tc/activity/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/LegalActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/LegalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/am;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/am;->a:Lcom/jeppesen/android/tc/activity/LegalActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/LegalActivity;->finish()V

    return-void
.end method
