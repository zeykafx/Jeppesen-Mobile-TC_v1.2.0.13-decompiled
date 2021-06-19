.class public Lcom/jeppesen/android/tc/activity/ar;
.super Landroid/widget/ArrayAdapter;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/jeppesen/jeppview/jtca/data/Chart;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v0, Lcom/jeppesen/android/tc/activity/as;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/as;-><init>(Lcom/jeppesen/android/tc/activity/ar;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/ar;->d:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ar;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/ar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ar;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jeppesen/android/tc/activity/ar;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/jeppesen/jeppview/jtca/data/Chart;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/ar;->b:Lcom/jeppesen/jeppview/jtca/data/Chart;

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/ar;->d:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v0, 0x7f090097

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/ar;->d:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ar;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/ar;->b:Lcom/jeppesen/jeppview/jtca/data/Chart;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/jeppesen/jeppview/jtca/data/Chart;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    return-object p2

    :cond_1
    const v2, 0x7f020040

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
