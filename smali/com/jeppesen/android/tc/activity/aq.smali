.class public Lcom/jeppesen/android/tc/activity/aq;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Ljava/util/List;

.field b:I

.field private final c:Landroid/content/Context;

.field private d:Lcom/jeppesen/jeppview/jtca/data/Airport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/aq;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jeppesen/jeppview/jtca/data/Airport;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/aq;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/aq;->d:Lcom/jeppesen/jeppview/jtca/data/Airport;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->d:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jeppesen/android/util/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    sget-object v0, Lcom/jeppesen/android/tc/activity/aq;->e:Ljava/lang/String;

    const-string v1, "ScrubberAdapter created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Chart;

    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/aq;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0
.end method
