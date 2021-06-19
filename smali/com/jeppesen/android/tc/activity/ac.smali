.class Lcom/jeppesen/android/tc/activity/ac;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ac;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 5

    invoke-static {}, Lcom/jeppesen/android/util/j;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/android/tc/a/b;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/a/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ZIP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected a(Ljava/util/List;)V
    .locals 8

    const/16 v7, 0x15e

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->J:Landroid/view/View;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/jeppesen/android/tc/activity/ao;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/jeppesen/android/tc/activity/ao;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030012

    const v4, 0x7f09006e

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/jeppesen/android/tc/activity/ao;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->J:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v2, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->H:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v2, v2, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->I:Landroid/view/View;

    invoke-static {v0, v1, v7, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->G:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ac;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v2, v2, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->I:Landroid/view/View;

    invoke-static {v0, v1, v7, v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/widget/PopupWindow;ILandroid/view/View;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ac;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ac;->a(Ljava/util/List;)V

    return-void
.end method
