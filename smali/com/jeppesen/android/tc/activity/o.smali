.class Lcom/jeppesen/android/tc/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->k:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->j:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/o;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iput p2, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->m:I

    return-void
.end method
