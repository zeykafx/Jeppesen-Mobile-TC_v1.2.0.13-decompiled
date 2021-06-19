.class Lcom/jeppesen/android/tc/activity/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/r;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/r;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->o:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/r;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->n:I

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/r;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->o:I

    return-void
.end method
