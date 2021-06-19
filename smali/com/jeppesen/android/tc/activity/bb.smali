.class Lcom/jeppesen/android/tc/activity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bb;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bb;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bb;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->b(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bb;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;J)J

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bb;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0, v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->a(Lcom/jeppesen/android/tc/activity/UpdateActivity;Z)Z

    return-void
.end method
