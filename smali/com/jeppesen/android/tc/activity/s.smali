.class Lcom/jeppesen/android/tc/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/s;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/s;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/s;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    const/high16 v2, 0x10a0000

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/s;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->d:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/s;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method
