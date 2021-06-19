.class Lcom/jeppesen/android/tc/activity/ad;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/ad;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/jeppesen/jeppview/jtca/NOTAMHandler;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "got notams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 8

    const v7, 0x7f07000c

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->E:Landroid/view/View;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->e(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Chart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->a()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v3, v7}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/jeppesen/android/tc/activity/ap;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f030018

    const v4, 0x7f090083

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/jeppesen/android/tc/activity/ap;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->E:Landroid/view/View;

    const v4, 0x7f090080

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v3, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->F:Landroid/view/View;

    const v2, 0x7f09007c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-virtual {v2, v7}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->C:Landroid/widget/PopupWindow;

    const/16 v2, 0x15e

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v3, v3, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/widget/PopupWindow;ILandroid/view/View;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v2}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->g(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)Lcom/jeppesen/jeppview/jtca/data/Airport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v1, v1, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->B:Landroid/widget/PopupWindow;

    const/16 v2, 0x17c

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/ad;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    iget-object v3, v3, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->D:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;->a(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Landroid/widget/PopupWindow;ILandroid/view/View;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ad;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ad;->a(Ljava/util/List;)V

    return-void
.end method
